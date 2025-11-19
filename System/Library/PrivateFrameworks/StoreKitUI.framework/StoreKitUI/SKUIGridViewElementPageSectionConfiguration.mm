@interface SKUIGridViewElementPageSectionConfiguration
- (BOOL)_isContainedWithinExploreTemplateWithGridViewElement:(id)a3;
- (BOOL)_useOrdinalPadding;
- (BOOL)viewElementIsStandardCard:(id)a3;
- (CGSize)cellSizeForViewElement:(id)a3 indexPath:(id)a4;
- (Class)_cardCellClassForCard:(id)a3;
- (Class)cellClassForViewElement:(id)a3;
- (Class)lockupCellClassWithLockup:(id)a3;
- (SKUIGridViewElementPageSectionConfigurationDataSource)dataSource;
- (UIEdgeInsets)_cellInsetsForViewElement:(id)a3 indexPath:(id)a4;
- (UIEdgeInsets)_normalizedContentInsetForViewElement:(id)a3 indexPath:(id)a4;
- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)a3 forGridViewElement:(id)a4;
- (double)_cellContentWidth;
- (double)_cellHeightForViewElement:(id)a3 width:(double)a4;
- (double)_columnContentWidthPaddingForWidth:(double)a3;
- (double)columnContentWidth;
- (double)columnWidth;
- (id)_cardArtworkBoundingSizeForIndexPath:(id)a3;
- (id)_lockupCellReuseIdentifierWithLockup:(id)a3;
- (id)backgroundColorForViewElement:(id)a3;
- (id)cellForViewElement:(id)a3 indexPath:(id)a4;
- (int64_t)_lockupTypeForLockup:(id)a3;
- (int64_t)_numberOfColumnsForWidth:(double)a3 style:(id)a4;
- (int64_t)positionForIndexPath:(id)a3;
- (void)_enumerateViewElementsForRowOfIndexPath:(id)a3 usingBlock:(id)a4;
- (void)_reloadCellPaddingIfNeeded;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)configureCell:(id)a3 forViewElement:(id)a4 indexPath:(id)a5;
- (void)registerReusableClassesForCollectionView:(id)a3;
- (void)reloadCellWithIndexPath:(id)a3 forViewElement:(id)a4 reason:(int64_t)a5;
- (void)requestCellLayoutForViewElement:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setNumberOfColumns:(int64_t)a3;
- (void)updateLayoutPropertiesForGridViewElement:(id)a3;
- (void)updateStylePropertiesForGridViewElement:(id)a3 gridItemViewElements:(id)a4 numberOfGridItems:(unint64_t)a5;
@end

@implementation SKUIGridViewElementPageSectionConfiguration

- (double)columnContentWidth
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v3 columnContentWidth:v4];
      }
    }
  }

  [(SKUIGridViewElementPageSectionConfiguration *)self columnWidth];
  [(SKUIGridViewElementPageSectionConfiguration *)self _columnContentWidthPaddingForWidth:?];
  return result;
}

- (double)columnWidth
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v3 columnWidth:v4];
      }
    }
  }

  if (self->_numberOfColumns < 1)
  {
    return 0.0;
  }

  [(SKUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
  v12 = v11;
  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 scale];
  v15 = v12 * v14;

  v16 = floor(v15 / self->_numberOfColumns);
  v17 = [MEMORY[0x277D759A0] mainScreen];
  [v17 scale];
  v19 = v16 / v18;

  return v19;
}

- (void)setDataSource:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v5 setDataSource:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != v4)
  {
    v14 = objc_storeWeak(&self->_dataSource, v4);
    *&self->_dataSourceRespondsToSelectorFlags = *&self->_dataSourceRespondsToSelectorFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)setNumberOfColumns:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v5 setNumberOfColumns:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  self->_numberOfColumns = a3;
  self->_cellContentWidth = 0.0;
  self->_cellPaddingLeftEdgeHorizontal = 0.0;
  self->_cellPaddingRightEdgeHorizontal = 0.0;
  self->_cellPaddingInteriorHorizontal = 0.0;
  self->_cellPaddingNeedsReloading = 1;
}

- (id)backgroundColorForViewElement:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v4 backgroundColorForViewElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [v3 style];
  v13 = [v12 ikBackgroundColor];
  v14 = [v13 color];

  if (!v14)
  {
    if ([v3 elementType] == 48)
    {
      v14 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (Class)cellClassForViewElement:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v5 cellClassForViewElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 elementType];
  v14 = 0;
  if (v13 > 48)
  {
    if (v13 <= 65)
    {
      if (v13 == 49 || v13 == 50)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v13 == 66)
      {
        v15 = [(SKUIGridViewElementPageSectionConfiguration *)self lockupCellClassWithLockup:v4];
        goto LABEL_21;
      }

      if (v13 == 141 || v13 == 152)
      {
        goto LABEL_20;
      }
    }
  }

  else if (v13 > 13)
  {
    if (v13 == 14)
    {
      v15 = [(SKUIGridViewElementPageSectionConfiguration *)self _cardCellClassForCard:v4];
      goto LABEL_21;
    }

    if (v13 == 48)
    {
LABEL_20:
      v15 = objc_opt_class();
LABEL_21:
      v14 = v15;
    }
  }

  else if ((v13 - 12) < 2 || v13 == 4)
  {
    goto LABEL_20;
  }

  v16 = v14;

  return v14;
}

- (id)cellForViewElement:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v8 cellForViewElement:v9 indexPath:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = self->_pageSectionContext;
  v17 = [v6 elementType];
  v18 = 0;
  if (v17 <= 48)
  {
    if (v17 > 13)
    {
      if (v17 == 14)
      {
        v24 = [v6 cardType];
        v19 = [(SKUIStorePageSectionContext *)v16 collectionView];
        v20 = v19;
        if (v24 == 3)
        {
          v21 = 0x28280C5E8;
        }

        else
        {
          v21 = 0x2828091E8;
        }
      }

      else
      {
        if (v17 != 48)
        {
          goto LABEL_24;
        }

        v19 = [(SKUIStorePageSectionContext *)v16 collectionView];
        v20 = v19;
        v21 = 0x282805B88;
      }

      goto LABEL_21;
    }

    if ((v17 - 12) >= 2)
    {
      if (v17 != 4)
      {
        goto LABEL_24;
      }

      v19 = [(SKUIStorePageSectionContext *)v16 collectionView];
      v20 = v19;
      v21 = 0x282814348;
      goto LABEL_21;
    }

LABEL_20:
    v19 = [(SKUIStorePageSectionContext *)v16 collectionView];
    v20 = v19;
    v21 = 0x28280D788;
LABEL_21:
    v18 = [v19 dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:v7];
    goto LABEL_22;
  }

  if (v17 <= 65)
  {
    if (v17 != 49)
    {
      if (v17 != 50)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    goto LABEL_27;
  }

  switch(v17)
  {
    case 66:
      v20 = [(SKUIGridViewElementPageSectionConfiguration *)self _lockupCellReuseIdentifierWithLockup:v6];
      v25 = [(SKUIStorePageSectionContext *)v16 collectionView];
      v18 = [v25 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:v7];

LABEL_22:
      if (!v18)
      {
        break;
      }

      goto LABEL_23;
    case 141:
      goto LABEL_20;
    case 152:
LABEL_27:
      v23 = [(SKUIStorePageSectionContext *)v16 collectionView];
      v18 = [v23 dequeueReusableCellWithReuseIdentifier:0x2827FFFC8 forIndexPath:v7];

      [v18 setShowsReflectionImage:0];
      if (v18)
      {
LABEL_23:
        [(SKUIGridViewElementPageSectionConfiguration *)self configureCell:v18 forViewElement:v6 indexPath:v7];
      }

      break;
  }

LABEL_24:

  return v18;
}

- (CGSize)cellSizeForViewElement:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v8 cellSizeForViewElement:v9 indexPath:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x3010000000;
  v61 = 0;
  v62 = 0;
  v60 = &unk_215F8ACD7;
  [(SKUIGridViewElementPageSectionConfiguration *)self columnWidth];
  *(v58 + 4) = v16;
  [(SKUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
  v18 = v17;
  v19 = v6;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v20)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v20 cellSizeForViewElement:v21 indexPath:v22, v23, v24, v25, v26, v27];
      }
    }
  }

  v28 = [v19 elementType];

  if (v28 == 48)
  {
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellInsetsForViewElement:v19 indexPath:v7];
    v30 = v29;
    v32 = v31;
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellHeightForViewElement:v19 width:v18 - v33 - v34];
    v35 = v58;
    v37 = v32 + v30 + v36;
    v58[4] = v18;
    v35[5] = v37;
  }

  else
  {
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v56 = 0;
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
    v49 = 0;
    v50 = &v49;
    v51 = 0x4010000000;
    v52 = &unk_215F8ACD7;
    v38 = *(MEMORY[0x277D768C8] + 16);
    v53 = *MEMORY[0x277D768C8];
    v54 = v38;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __80__SKUIGridViewElementPageSectionConfiguration_cellSizeForViewElement_indexPath___block_invoke;
    v43[3] = &unk_2781FEFF0;
    v48 = v39;
    v43[4] = self;
    v45 = &v49;
    v46 = &v57;
    v47 = v55;
    v44 = v7;
    [(SKUIGridViewElementPageSectionConfiguration *)self _enumerateViewElementsForRowOfIndexPath:v44 usingBlock:v43];
    v58[5] = v50[6] + v50[4] + v58[5];

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(v55, 8);
    v35 = v58;
    v18 = v58[4];
    v37 = v58[5];
  }

  if (v37 >= self->_minimumCellHeight)
  {
    minimumCellHeight = v37;
  }

  else
  {
    minimumCellHeight = self->_minimumCellHeight;
  }

  v35[5] = minimumCellHeight;
  _Block_object_dispose(&v57, 8);

  v41 = v18;
  v42 = minimumCellHeight;
  result.height = v42;
  result.width = v41;
  return result;
}

void __80__SKUIGridViewElementPageSectionConfiguration_cellSizeForViewElement_indexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  [*(a1 + 32) _cellInsetsForViewElement:v27 indexPath:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 32);
  v15 = *(a1 + 72) - v8 - v12;
  if (v14[96])
  {
    v16 = v15;
  }

  else
  {
    v16 = *(a1 + 72);
  }

  [v14 _cellHeightForViewElement:v27 width:v16];
  v18 = v17;
  if (*(*(a1 + 32) + 236) == 1)
  {
    if ([v27 rendersWithPerspective])
    {
      v19 = [*(a1 + 32) cellClassForViewElement:v27];
      if (class_conformsToProtocol(v19, &unk_282916328))
      {
        [v19 maximumPerspectiveHeightForSize:{v16, v18}];
        v7 = v20;
      }
    }
  }

  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 48);
  if (v22 < v11)
  {
    v22 = v11;
  }

  *(v21 + 48) = v22;
  v23 = *(*(a1 + 48) + 8);
  v24 = *(v23 + 32);
  if (v24 < v7)
  {
    v24 = v7;
  }

  *(v23 + 32) = v24;
  v25 = *(*(a1 + 56) + 8);
  v26 = *(v25 + 40);
  if (v26 < v18)
  {
    v26 = v18;
  }

  *(v25 + 40) = v26;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0 && [*(a1 + 40) isEqual:v5])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *(*(*(a1 + 56) + 8) + 32) = v13 + v9 + v16;
  }
}

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v5 collectionViewWillApplyLayoutAttributes:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 indexPath];
  [v4 setPosition:{-[SKUIGridViewElementPageSectionConfiguration positionForIndexPath:](self, "positionForIndexPath:", v13)}];
}

- (void)configureCell:(id)a3 forViewElement:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v11)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v11 configureCell:v12 forViewElement:v13 indexPath:v14, v15, v16, v17, v18];
      }
    }
  }

  v19 = self->_pageSectionContext;
  v20 = [v9 elementType];
  v21 = 0;
  v22 = 0;
  if (v20 <= 48)
  {
    if (v20 == 14)
    {
      if ([v9 cardType] != 3)
      {
        v21 = v8;
        v22 = 0;
        goto LABEL_11;
      }

LABEL_10:
      v22 = 0;
      v21 = 0;
LABEL_11:
      v23 = 0;
      goto LABEL_16;
    }

    v23 = 0;
    if (v20 == 48)
    {
      v21 = 0;
      v23 = 0;
      v22 = 1;
    }
  }

  else
  {
    if (v20 == 49)
    {
LABEL_9:
      [v8 setShowsReflectionImage:0];
      goto LABEL_10;
    }

    if (v20 != 66)
    {
      v23 = 0;
      if (v20 != 152)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v24 = [(SKUIGridViewElementPageSectionConfiguration *)self _lockupCellReuseIdentifierWithLockup:v9];
    v23 = v24 == @"SKUIHorizontalLockupReuseID";

    v22 = 0;
    v21 = 0;
  }

LABEL_16:
  v25 = self->_separatorColor;
  top = self->_separatorWidths.top;
  left = self->_separatorWidths.left;
  bottom = self->_separatorWidths.bottom;
  right = self->_separatorWidths.right;
  v30 = self->_separatorMargins.top;
  v31 = self->_separatorMargins.left;
  v32 = self->_separatorMargins.bottom;
  v33 = self->_separatorMargins.right;
  if (v22)
  {
    v86 = v23;
    v34 = [v9 style];
    separatorStyle = [v34 valueForStyle:*MEMORY[0x277D1AFB8]];

    v87 = v19;
    if (separatorStyle)
    {
      [v34 borderWidths];
      top = v36;
      left = v37;
      bottom = v38;
      right = v39;
      separatorStyle = 2;
    }

    v88 = v10;
    v40 = [v34 valueForStyle:*MEMORY[0x277D1AFA8]];

    if (v40)
    {
      v41 = [v34 ikBorderColor];
      v42 = [v41 color];

      v25 = v42;
    }

    v43 = [v34 valueForStyle:*MEMORY[0x277D1AFB0]];

    if (v43)
    {
      [v34 borderMargins];
      v30 = v44;
      v31 = v45;
      v32 = v46;
      v33 = v47;
    }

    v89 = right;
    v48 = [v9 parent];
    v49 = [v48 style];
    v50 = [v49 ikBackgroundColor];

    if (v50 && [v50 colorType] == 3)
    {
      self->_hasHeader = 1;
    }

    v51 = v32;

    v19 = v87;
    v10 = v88;
    v23 = v86;
  }

  else
  {
    v89 = self->_separatorWidths.right;
    separatorStyle = self->_separatorStyle;
    v51 = self->_separatorMargins.bottom;
    if (self->_hasHeader && [v10 item] == 1)
    {
      separatorStyle = 0;
    }
  }

  v52 = v31;
  v53 = v9;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v54 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v54)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v54 cellSizeForViewElement:v55 indexPath:v56, v57, v58, v59, v60, v61];
      }
    }
  }

  v62 = v30;
  v63 = [v53 elementType];

  if (v63 == 48)
  {
    [(SKUIStorePageSectionContext *)v19 activePageWidth];
    v65 = v64;
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingLeftEdgeHorizontal];
    v67 = v65 - v66;
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingRightEdgeHorizontal];
    v69 = v67 - v68;
  }

  else
  {
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
    v69 = v70;
  }

  [v8 reloadWithViewElement:v53 width:self->_cellLayoutContext context:v69];
  [v8 setSeparatorColor:v25];
  [v8 setSeparatorStyle:separatorStyle];
  [v8 setSeparatorWidths:{top, left, bottom, v89}];
  [v8 setSeparatorInsets:{v62, v52, v51, v33}];
  if (v23)
  {
    [v8 setEditing:self->_showsEditMode animated:0];
  }

  [(SKUIGridViewElementPageSectionConfiguration *)self _normalizedContentInsetForViewElement:v53 indexPath:v10];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  if (-[SKUIGridViewElementPageSectionConfiguration rendersWithPerspective](self, "rendersWithPerspective") && [v8 conformsToProtocol:&unk_282916328])
  {
    v79 = v8;
    v80 = [(SKUIStorePageSectionContext *)self->_pageSectionContext parentViewController];
    v81 = [v80 view];

    [v79 setPerspectiveTargetView:v81];
    [v81 bounds];
    [v79 setVanishingPoint:{CGRectGetMidX(v90), -800.0}];
    if ([v53 rendersWithPerspective])
    {
      [objc_opt_class() sizeThatFitsWidth:v53 viewElement:self->_cellLayoutContext context:v69];
      [objc_opt_class() maximumPerspectiveHeightForSize:{v82, v83}];
      if (v72 < v84)
      {
        v72 = v84;
      }
    }
  }

  [v8 setContentInset:{v72, v74, v76, v78}];
  if (v21)
  {
    v85 = [(SKUIGridViewElementPageSectionConfiguration *)self _cardArtworkBoundingSizeForIndexPath:v10];
    [v21 setArtworkBoundingSize:v85];
  }
}

- (Class)lockupCellClassWithLockup:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v5 lockupCellClassWithLockup:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if ([(SKUIGridViewElementPageSectionConfiguration *)self _lockupTypeForLockup:v4]<= 8)
  {
    self = objc_opt_class();
  }

  return self;
}

- (int64_t)positionForIndexPath:(id)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v5 positionForIndexPath:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [a3 item];
  v14 = 1;
  v19 = 1;
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = v13;
    if (v13 >= [(NSArray *)self->_positions count])
    {
      v14 = 1;
    }

    else
    {
      v16 = [(NSArray *)self->_positions objectAtIndex:v15];
      v14 = [v16 integerValue];
      v19 = v14;
    }
  }

  if (*&self->_dataSourceRespondsToSelectorFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained gridViewElementPageSectionConfiguration:self configurePosition:&v19 forItemAtIndexPath:a3];

    return v19;
  }

  return v14;
}

- (void)registerReusableClassesForCollectionView:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v4 registerReusableClassesForCollectionView:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282814348];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280D788];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828091E8];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280C5E8];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280D588];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2827FFFC8];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282808388];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282805B88];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828040A8];
}

- (void)reloadCellWithIndexPath:(id)a3 forViewElement:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v10 reloadCellWithIndexPath:v11 forViewElement:v12 reason:v13, v14, v15, v16, v17];
      }
    }
  }

  v18 = [(SKUIStorePageSectionContext *)self->_pageSectionContext collectionView];
  v19 = [v18 cellForItemAtIndexPath:v8];

  [(SKUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
  [v19 reloadWithViewElement:v9 width:self->_cellLayoutContext context:?];
  if (a5 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 setEditing:self->_showsEditMode animated:1];
    }
  }

  if ([(SKUIGridViewElementPageSectionConfiguration *)self viewElementIsStandardCard:v9])
  {
    v20 = [(SKUIGridViewElementPageSectionConfiguration *)self _cardArtworkBoundingSizeForIndexPath:v8];
    [v19 setArtworkBoundingSize:v20];
  }

  [(SKUIGridViewElementPageSectionConfiguration *)self _normalizedContentInsetForViewElement:v9 indexPath:v8];
  [v19 setContentInset:?];
}

- (void)requestCellLayoutForViewElement:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v5 requestCellLayoutForViewElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIGridViewElementPageSectionConfiguration *)self cellClassForViewElement:v4];
  v14 = v4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v15)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v15 cellSizeForViewElement:v16 indexPath:v17, v18, v19, v20, v21, v22];
      }
    }
  }

  v23 = [v14 elementType];

  if (v23 == 48)
  {
    [(SKUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
    v25 = v24;
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingLeftEdgeHorizontal];
    v27 = v25 - v26;
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingRightEdgeHorizontal];
    v29 = v27 - v28;
  }

  else
  {
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
  }

  [(objc_class *)v13 requestLayoutForViewElement:v14 width:self->_cellLayoutContext context:v29];
}

- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)a3 forGridViewElement:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v9 sectionContentInsetAdjustedFromValue:v10 forGridViewElement:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v25 = 0;
  v17 = [v8 style];
  v18 = SKUIViewElementPaddingForStyle(v17, &v25);
  v20 = v19;

  if (v25)
  {
    bottom = v20;
    top = v18;
  }

  v21 = top;
  v22 = left;
  v23 = bottom;
  v24 = right;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (void)updateLayoutPropertiesForGridViewElement:(id)a3
{
  *(&v53[1] + 4) = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v5 updateLayoutPropertiesForGridViewElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
  [v13 activePageWidth];
  v15 = v14;
  self->_cellContentWidth = 0.0;
  v16 = [v4 style];
  [(SKUIGridViewElementPageSectionConfiguration *)self setNumberOfColumns:[(SKUIGridViewElementPageSectionConfiguration *)self _numberOfColumnsForWidth:v16 style:v15]];

  v17 = [v13 clientContext];
  v18 = SKUIUserInterfaceIdiom(v17);

  v45 = self;
  v42 = v13;
  if (v18 == 1)
  {
    v19 = self;
    if ([(SKUIGridViewElementPageSectionConfiguration *)self _isContainedWithinExploreTemplateWithGridViewElement:v4])
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

LABEL_14:
    v19->_cardVerticalSpacingStyle = v20;
    goto LABEL_15;
  }

  if (v15 >= 414.0)
  {
    v19 = self;
    if (self->_numberOfColumns > 1)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    goto LABEL_14;
  }

  v19 = self;
  self->_cardVerticalSpacingStyle = 0;
LABEL_15:
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v43 = v4;
  obj = [v4 flattenedChildren];
  v22 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v22)
  {
    v24 = 0;
    goto LABEL_45;
  }

  v23 = v22;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = *v48;
  do
  {
    v29 = 0;
    v44 = v27;
    do
    {
      if (*v48 != v28)
      {
        objc_enumerationMutation(obj);
      }

      numberOfColumns = v19->_numberOfColumns;
      if (numberOfColumns == 1)
      {
        goto LABEL_27;
      }

      v31 = *(*(&v47 + 1) + 8 * v29);
      if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [(SKUIGridViewElementPageSectionConfiguration *)buf updateLayoutPropertiesForGridViewElement:v53];
      }

      v32 = [v31 elementType];

      if (v32 == 48)
      {
        v19 = v45;
        numberOfColumns = v45->_numberOfColumns;
        v25 = numberOfColumns - 1;
LABEL_27:
        v33 = 5;
        v24 = v27;
        goto LABEL_33;
      }

      v19 = v45;
      numberOfColumns = v45->_numberOfColumns;
      if (v25 == numberOfColumns - 1)
      {
        v33 = 4;
      }

      else
      {
        v33 = 2;
      }

      if (!v25)
      {
        v24 = v27;
        v25 = 0;
        v33 = 1;
      }

LABEL_33:
      if (v26)
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 | 8;
      }

      v35 = numberOfColumns - 1;
      v36 = v25 < v35;
      if (v25 < v35)
      {
        ++v25;
      }

      else
      {
        v25 = 0;
      }

      if (!v36)
      {
        ++v26;
      }

      v37 = [MEMORY[0x277CCABB0] numberWithInt:v34];
      [(NSArray *)v21 addObject:v37];

      ++v27;
      ++v29;
    }

    while (v23 != v29);
    v27 = v44 + v23;
    v23 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v23);
LABEL_45:

  for (; v24 < [(NSArray *)v21 count]; ++v24)
  {
    v38 = [(NSArray *)v21 objectAtIndex:v24];
    v39 = [v38 integerValue];

    v40 = [MEMORY[0x277CCABB0] numberWithInt:v39 | 0x20u];
    [(NSArray *)v21 replaceObjectAtIndex:v24 withObject:v40];
  }

  positions = v45->_positions;
  v45->_positions = v21;
}

- (void)updateStylePropertiesForGridViewElement:(id)a3 gridItemViewElements:(id)a4 numberOfGridItems:(unint64_t)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v9 updateStylePropertiesForGridViewElement:v10 gridItemViewElements:v11 numberOfGridItems:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [MEMORY[0x277D75348] separatorColor];
  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 scale];
  v20 = v19;

  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v21)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v21 updateStylePropertiesForGridViewElement:v22 gridItemViewElements:v23 numberOfGridItems:v24, v25, v26, v27, v28];
      }
    }
  }

  if ([v7 elementType] == 45)
  {
    v29 = [v7 showsEditMode];
  }

  else
  {
    v29 = 0;
  }

  self->_showsEditMode = v29;
  v30 = [v7 style];
  v31 = [v30 itemWidth];
  v32 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v33 = [v31 stringByTrimmingCharactersInSet:v32];

  [v33 floatValue];
  self->_gridViewElementStyleItemWidth = v34;
  v35 = [v33 hasSuffix:@"%"];
  self->_gridViewElementStyleItemWidthIsPercentage = v35;
  if (v35)
  {
    gridViewElementStyleItemWidth = self->_gridViewElementStyleItemWidth;
    self->_gridIsEdgeToEdge = gridViewElementStyleItemWidth == 100.0;
    p_gridIsEdgeToEdge = &self->_gridIsEdgeToEdge;
    if (gridViewElementStyleItemWidth == 100.0)
    {
      v38 = [MEMORY[0x277D75348] whiteColor];

      v40 = *MEMORY[0x277D768C8];
      v39 = *(MEMORY[0x277D768C8] + 8);
      v41 = *(MEMORY[0x277D768C8] + 16);
      v42 = *(MEMORY[0x277D768C8] + 24);
      v17 = v38;
      goto LABEL_17;
    }
  }

  else
  {
    self->_gridIsEdgeToEdge = 0;
    p_gridIsEdgeToEdge = &self->_gridIsEdgeToEdge;
  }

  v41 = 0.0;
  v42 = 15.0;
  v39 = 15.0;
  v40 = 0.0;
LABEL_17:
  v43 = 1.0 / v20;
  v44 = [v30 ikBorderColor];
  v45 = [v44 color];

  if (v45)
  {
    if (CGColorGetAlpha([v45 CGColor]) <= 0.00000011920929)
    {
      v80 = 0;
      v46 = 0;
      goto LABEL_47;
    }

    v80 = v45;
  }

  else
  {
    v80 = v17;
  }

  v17 = [v30 dividerType];
  if ([v17 isEqualToString:@"grid-full"])
  {
    v46 = 2;
  }

  else if ([v17 isEqualToString:@"grid-top"])
  {
    v46 = 3;
  }

  else if ([v17 isEqualToString:@"full"])
  {
    v46 = 4;
  }

  else if ([v17 isEqualToString:@"grid-vertical"])
  {
    v46 = 6;
  }

  else if ([v17 isEqualToString:@"none"])
  {
    v46 = 0;
  }

  else if (*p_gridIsEdgeToEdge || ([v17 isEqualToString:@"edge-to-edge"] & 1) != 0)
  {
    v46 = 7;
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = v8;
    v47 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v86 count:16];
    if (v47)
    {
      v48 = v47;
      v79 = *v83;
      v46 = 1;
LABEL_37:
      v49 = 0;
      while (1)
      {
        if (*v83 != v79)
        {
          objc_enumerationMutation(obj);
        }

        if (!SKUIIKViewElementTypeIsButton([*(*(&v82 + 1) + 8 * v49) elementType]))
        {
          break;
        }

        if (v48 == ++v49)
        {
          v48 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v86 count:16];
          if (v48)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }
    }

    else
    {
LABEL_43:
      v46 = 4;
    }
  }

  v50 = [v30 valueForStyle:*MEMORY[0x277D1AFB8]];

  if (v50)
  {
    [v30 borderWidths];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v43 = v57;
    goto LABEL_48;
  }

LABEL_47:
  v56 = v43;
  v54 = v43;
  v52 = v43;
LABEL_48:
  v58 = v8;

  v59 = [v30 valueForStyle:*MEMORY[0x277D1AFB0]];

  if (v59)
  {
    [v30 borderMargins];
    v40 = v60;
    v39 = v61;
    v41 = v62;
    v42 = v63;
  }

  v64 = [v30 valueForStyle:*MEMORY[0x277D1AFF0]];
  v65 = 1;
  if (!v64)
  {
    v66 = [v30 valueForStyle:@"itml-padding"];
    v65 = v66 != 0;
  }

  self->_hasGridViewElementStyle = v30 != 0 && v65;
  [v30 elementPadding];
  self->_gridViewElementStyleElementPadding.top = v67;
  self->_gridViewElementStyleElementPadding.left = v68;
  self->_gridViewElementStyleElementPadding.bottom = v69;
  self->_gridViewElementStyleElementPadding.right = v70;
  self->_numberOfGridItems = a5;
  self->_separatorStyle = v46;
  objc_storeStrong(&self->_separatorColor, v80);
  self->_separatorMargins.top = v40;
  self->_separatorMargins.left = v39;
  self->_separatorMargins.bottom = v41;
  self->_separatorMargins.right = v42;
  self->_separatorWidths.top = v52;
  self->_separatorWidths.left = v54;
  self->_separatorWidths.bottom = v56;
  self->_separatorWidths.right = v43;
  viewElements = self->_viewElements;
  self->_viewElements = v58;

  self->_cellContentWidth = 0.0;
  self->_cellPaddingNeedsReloading = 1;
  self->_cellPaddingLeftEdgeHorizontal = 0.0;
  self->_cellPaddingRightEdgeHorizontal = 0.0;
  self->_cellPaddingInteriorHorizontal = 0.0;
  v72 = [v7 style];
  v73 = [v72 lockupType];

  if (v73)
  {
    v74 = SKUILockupViewTypeForString(v73);
  }

  else
  {
    v74 = -1;
  }

  self->_lockupType = v74;
  v75 = [v30 itemHeight];
  if (v75 || ([v30 rowHeight], (v75 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v76 = v75;
    [v75 floatValue];
    self->_minimumCellHeight = v77;
  }

  else
  {
    self->_minimumCellHeight = 44.0;
  }
}

- (BOOL)viewElementIsStandardCard:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v4 viewElementIsStandardCard:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [v3 elementType] == 14 && objc_msgSend(v3, "cardType") != 3;

  return v12;
}

- (id)_cardArtworkBoundingSizeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__74;
  v14 = __Block_byref_object_dispose__74;
  v15 = 0;
  if (self->_numberOfColumns >= 2)
  {
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__SKUIGridViewElementPageSectionConfiguration__cardArtworkBoundingSizeForIndexPath___block_invoke;
    v9[3] = &unk_2781FF018;
    v9[6] = v6;
    v9[4] = self;
    v9[5] = &v10;
    [(SKUIGridViewElementPageSectionConfiguration *)self _enumerateViewElementsForRowOfIndexPath:v4 usingBlock:v9];
    v5 = v11[5];
  }

  v7 = v5;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __84__SKUIGridViewElementPageSectionConfiguration__cardArtworkBoundingSizeForIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) viewElementIsStandardCard:?])
  {
    [SKUICardViewElementCollectionViewCell artworkBoundingSizeWithViewElement:v9 width:*(*(a1 + 32) + 240) context:*(a1 + 48)];
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      [v5 unionWithSize:{v3, v4}];
    }

    else
    {
      v6 = [[SKUISizeValue alloc] initWithSize:v3, v4];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

- (Class)_cardCellClassForCard:(id)a3
{
  [a3 cardType];
  v3 = objc_opt_class();

  return v3;
}

- (double)_cellContentWidth
{
  v23 = *MEMORY[0x277D85DE8];
  result = self->_cellContentWidth;
  if (result >= 0.00000011920929)
  {
    return result;
  }

  result = self->_gridViewElementStyleItemWidth;
  if (result <= 0.00000011920929)
  {
    [(SKUIGridViewElementPageSectionConfiguration *)self columnContentWidth];
    v8 = v7;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_viewElements;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v10)
    {
      goto LABEL_36;
    }

    v11 = v10;
    v12 = *v19;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 elementType];
        if (v15 == 66)
        {
          if ([v14 lockupViewType] == 7)
          {
            [(SKUIGridViewElementPageSectionConfiguration *)self columnWidth];
LABEL_33:
            self->_cellContentWidth = v16;
            continue;
          }

          if ([v14 lockupViewType] == 2 && v8 <= 0.0)
          {
            [SKUIHorizontalLockupCollectionViewCell preferredSizeForViewElement:v14 context:self->_cellLayoutContext];
            [(SKUIGridViewElementPageSectionConfiguration *)self _columnContentWidthPaddingForWidth:?];
            cellContentWidth = self->_cellContentWidth;
LABEL_31:
            if (cellContentWidth >= v16)
            {
              v16 = cellContentWidth;
            }

            goto LABEL_33;
          }

LABEL_28:
          v16 = self->_cellContentWidth;
          if (v16 < v8)
          {
            v16 = v8;
          }

          goto LABEL_33;
        }

        if (v15 != 48)
        {
          if (v15 == 14 && [(SKUIGridViewElementPageSectionConfiguration *)self viewElementIsStandardCard:v14])
          {
            [SKUICardViewElementCollectionViewCell preferredSizeForViewElement:v14 context:self->_cellLayoutContext];
            cellContentWidth = self->_cellContentWidth;
            if (v16 >= v8)
            {
              v16 = v8;
            }

            goto LABEL_31;
          }

          goto LABEL_28;
        }

        v16 = v8;
        if (self->_cellContentWidth < 0.00000011920929)
        {
          goto LABEL_33;
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16, v16];
      if (!v11)
      {
LABEL_36:

        return self->_cellContentWidth;
      }
    }
  }

  if (self->_gridViewElementStyleItemWidthIsPercentage)
  {
    v4 = result / 100.0;
    v5 = 1.0;
    if (v4 <= 1.0)
    {
      v5 = v4;
      if (v4 < 0.00000011920929)
      {
        v5 = 0.0;
      }
    }

    [(SKUIGridViewElementPageSectionConfiguration *)self columnWidth];
    result = v5 * v6;
  }

  self->_cellContentWidth = result;
  return result;
}

- (double)_cellHeightForViewElement:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [(SKUIGridViewElementPageSectionConfiguration *)self cellClassForViewElement:v6];
  if (v7)
  {
    [(objc_class *)v7 sizeThatFitsWidth:v6 viewElement:self->_cellLayoutContext context:a4];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [v6 style];
  v11 = [v10 itemHeight];
  v12 = v11;
  if (v11)
  {
    [v11 floatValue];
    v14 = v13;
  }

  else
  {
    v15 = [v10 rowHeight];
    v16 = v15;
    if (v15)
    {
      [v15 floatValue];
      v14 = v17;
    }

    else
    {
      v14 = 0.0;
    }
  }

  if (v9 < v14)
  {
    v9 = v14;
  }

  return v9;
}

- (UIEdgeInsets)_cellInsetsForViewElement:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v11 = *(MEMORY[0x277D768C8] + 24);
  v12 = [v6 style];
  v69 = 0;
  v13 = SKUIViewElementPaddingForStyle(v12, &v69);
  if (v69 != 1)
  {
    v20 = v11;
    v18 = v10;
    v19 = v8;
    v17 = v9;
    if (self->_hasGridViewElementStyle)
    {
      goto LABEL_25;
    }

    v21 = [v6 elementType];
    if (v21 > 47)
    {
      if (v21 == 48)
      {
        v18 = v10 + 10.0;
        v17 = v9 + 4.0;
        [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingLeftEdgeHorizontal];
        v19 = v8 + v61;
        [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingRightEdgeHorizontal];
        v20 = v11 + v62;
        goto LABEL_25;
      }

      if (v21 != 141 && v21 != 50)
      {
        goto LABEL_21;
      }
    }

    else if ((v21 - 12) >= 2)
    {
      if (v21 == 14 && [(SKUIGridViewElementPageSectionConfiguration *)self viewElementIsStandardCard:v6])
      {
        cardVerticalSpacingStyle = self->_cardVerticalSpacingStyle;
        if (cardVerticalSpacingStyle > 1)
        {
          if (cardVerticalSpacingStyle != 2)
          {
            if (cardVerticalSpacingStyle == 3)
            {
              v63 = [v6 firstChildForElementType:66];

              if (v63)
              {
                v18 = v10 + 20.0;
              }

              else
              {
                v18 = v10;
              }

              if (v63)
              {
                v17 = v9 + 30.0;
              }

              else
              {
                v17 = v9 + 25.0;
              }
            }

            else
            {
              if (cardVerticalSpacingStyle == 4)
              {
                v18 = v10 + 30.0;
              }

              else
              {
                v18 = v10;
              }

              if (cardVerticalSpacingStyle == 4)
              {
                v17 = v9 + 20.0;
              }

              else
              {
                v17 = v9;
              }
            }

            goto LABEL_24;
          }

          v18 = v10 + 24.0;
          v23 = 33.0;
LABEL_23:
          v17 = v9 + v23;
LABEL_24:
          v20 = v11;
          v19 = v8;
          goto LABEL_25;
        }

        if (!cardVerticalSpacingStyle)
        {
          v18 = v10 + 30.0;
          v23 = 20.0;
          goto LABEL_23;
        }

        v20 = v11;
        v18 = v10;
        v19 = v8;
        v17 = v9;
        if (cardVerticalSpacingStyle != 1)
        {
          goto LABEL_25;
        }

        v23 = 25.0;
LABEL_22:
        v18 = v10 + v23;
        goto LABEL_23;
      }

LABEL_21:
      v23 = 10.0;
      goto LABEL_22;
    }

    v18 = v10 + 12.0;
    v23 = 11.0;
    goto LABEL_23;
  }

  v17 = v9 + v13;
  v18 = v10 + v15;
  v19 = v8 + v14;
  v20 = v11 + v16;
LABEL_25:
  v24 = v6;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v25)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v25 cellSizeForViewElement:v26 indexPath:v27, v28, v29, v30, v31, v32];
      }
    }
  }

  v33 = [v24 elementType];

  if (v33 != 48)
  {
    v67 = v17;
    v68 = v18;
    [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingInteriorHorizontal];
    v35 = v20 + v19 + v34 * 2.0;
    [(SKUIGridViewElementPageSectionConfiguration *)self columnContentWidth];
    v37 = v35 + v36;
    [(SKUIGridViewElementPageSectionConfiguration *)self columnWidth];
    v39 = v37 <= v38;
    if (v37 <= v38)
    {
      v40 = v20;
    }

    else
    {
      v40 = 0.0;
    }

    if (v39)
    {
      v41 = v19;
    }

    else
    {
      v41 = 0.0;
    }

    [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingInteriorHorizontal];
    v43 = v42;
    v44 = [(SKUIGridViewElementPageSectionConfiguration *)self positionForIndexPath:v7];
    if (v44)
    {
      [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingLeftEdgeHorizontal];
      v47 = v46;
      v45 = v43;
    }

    else
    {
      if ((v44 & 4) != 0)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)self _cellPaddingRightEdgeHorizontal];
      }

      else
      {
        v45 = v43;
      }

      v47 = v43;
    }

    v19 = v41 + v47;
    v20 = v40 + v45;
    if ([v24 elementType] == 66)
    {
      v65 = v11;
      v66 = v9;
      v64 = v10;
      v48 = [(SKUIGridViewElementPageSectionConfiguration *)self cellLayoutContext];
      [v48 largeScreenElementPadding];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      if (v8 != v52 || v66 != v50 || v65 != v56 || v64 != v54)
      {
        v20 = v56;
        v67 = v50;
        v68 = v54;
        v19 = v52;
      }

      v18 = v68;
      if (self->_gridViewElementStyleItemWidthIsPercentage)
      {
        v18 = v43 + v68;
        v17 = v43 + v67;
      }

      else
      {
        v17 = v67;
      }
    }

    else
    {
      v17 = v67;
      v18 = v68;
    }
  }

  v57 = v17;
  v58 = v19;
  v59 = v18;
  v60 = v20;
  result.right = v60;
  result.bottom = v59;
  result.left = v58;
  result.top = v57;
  return result;
}

- (double)_columnContentWidthPaddingForWidth:(double)a3
{
  v5 = [(SKUIGridViewElementPageSectionConfiguration *)self _useOrdinalPadding];
  v6 = [(SKUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
  [v6 horizontalPadding];
  v8 = a3 - v7;
  v9 = a3 + v7 * -2.0;
  if (v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (void)_enumerateViewElementsForRowOfIndexPath:(id)a3 usingBlock:(id)a4
{
  *&v20[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 item] / self->_numberOfColumns * self->_numberOfColumns;
  v17 = v6;
  v9 = [v6 section];
  v18 = 0;
  numberOfGridItems = self->_numberOfGridItems;
  v11 = [(SKUIGridViewElementPageSectionConfiguration *)self dataSource];
  v12 = v8;
  do
  {
    if (v12 >= self->_numberOfColumns + v8 || v12 >= numberOfGridItems)
    {
      break;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x277CCAA70] indexPathForItem:v12 inSection:v9];
    v16 = [v11 gridViewElementPageSectionConfiguration:self viewElementForIndexPath:v15];
    if (v16)
    {
      if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [(SKUIGridViewElementPageSectionConfiguration *)buf updateLayoutPropertiesForGridViewElement:v20];
      }

      if ([v16 elementType] != 48)
      {
        v7[2](v7, v16, v15, &v18);
      }
    }

    objc_autoreleasePoolPop(v14);
    ++v12;
  }

  while ((v18 & 1) == 0);
}

- (BOOL)_isContainedWithinExploreTemplateWithGridViewElement:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      v6 = [v5 elementType];
      v7 = [v5 parent];

      v5 = v7;
      v8 = v6 == 37;
    }

    while (!v8 && v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_lockupCellReuseIdentifierWithLockup:(id)a3
{
  v3 = [(SKUIGridViewElementPageSectionConfiguration *)self _lockupTypeForLockup:a3];
  if (v3 <= 8)
  {
    v4 = *off_2781FF0A8[v3];
  }

  return v4;
}

- (int64_t)_lockupTypeForLockup:(id)a3
{
  result = self->_lockupType;
  if (result == -1)
  {
    return [a3 lockupViewType];
  }

  return result;
}

- (UIEdgeInsets)_normalizedContentInsetForViewElement:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x4010000000;
  v37 = &unk_215F8ACD7;
  v38 = 0u;
  v39 = 0u;
  [(SKUIGridViewElementPageSectionConfiguration *)self _cellInsetsForViewElement:v6 indexPath:v7];
  *&v38 = v8;
  *(&v38 + 1) = v9;
  *&v39 = v10;
  *(&v39 + 1) = v11;
  v12 = v6;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v13)
      {
        [(SKUIGridViewElementPageSectionConfiguration *)v13 cellSizeForViewElement:v14 indexPath:v15, v16, v17, v18, v19, v20];
      }
    }
  }

  v21 = [v12 elementType];

  if (v21 != 48)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __95__SKUIGridViewElementPageSectionConfiguration__normalizedContentInsetForViewElement_indexPath___block_invoke;
    v30[3] = &unk_2781FF040;
    v31 = v12;
    v32 = self;
    v33 = &v34;
    [(SKUIGridViewElementPageSectionConfiguration *)self _enumerateViewElementsForRowOfIndexPath:v7 usingBlock:v30];
  }

  v22 = v35[4];
  v23 = v35[5];
  v24 = v35[6];
  v25 = v35[7];
  _Block_object_dispose(&v34, 8);

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

uint64_t __95__SKUIGridViewElementPageSectionConfiguration__normalizedContentInsetForViewElement_indexPath___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) != a2)
  {
    v3 = result;
    result = [*(result + 40) _cellInsetsForViewElement:a2 indexPath:a3];
    v6 = *(*(v3 + 48) + 8);
    v7 = *(v6 + 48);
    if (v7 < v5)
    {
      v7 = v5;
    }

    *(v6 + 48) = v7;
    v8 = *(*(v3 + 48) + 8);
    if (*(v8 + 32) >= v4)
    {
      v4 = *(v8 + 32);
    }

    *(v8 + 32) = v4;
  }

  return result;
}

- (int64_t)_numberOfColumnsForWidth:(double)a3 style:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 columnCount];
    v9 = [(SKUIStorePageSectionContext *)self->_pageSectionContext layoutStyle];
    if (v8 != -1)
    {
      if ((v8 * 320.0) + 320.0 <= a3)
      {
        ++v8;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v9 = [(SKUIStorePageSectionContext *)self->_pageSectionContext layoutStyle];
  }

  v10 = (a3 / 320.0);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  if (v10 >= 3)
  {
    v10 = 3;
  }

  v11 = 1;
  if (a3 >= 640.0)
  {
    v11 = 2;
  }

  if (v9 == 2)
  {
    v10 = v11;
  }

  if (v9 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v10;
  }

LABEL_18:

  return v8;
}

- (void)_reloadCellPaddingIfNeeded
{
  if (self->_cellPaddingNeedsReloading)
  {
    [(SKUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
    if (v3 <= 0.0)
    {
      v8 = [(SKUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
      [v8 horizontalPadding];
      v7 = v9 + v9;
    }

    else
    {
      [(SKUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
      v5 = v4;
      [(SKUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
      *&v6 = v5 - v6 * self->_numberOfColumns;
      v7 = floorf(*&v6);
    }

    v10 = [(SKUIGridViewElementPageSectionConfiguration *)self _useOrdinalPadding];
    v11 = v10;
    if (self->_numberOfColumns > 1)
    {
      if (self->_hasGridViewElementStyle)
      {
        left = self->_gridViewElementStyleElementPadding.left;
        right = self->_gridViewElementStyleElementPadding.right;
      }

      else
      {
        v16 = [(SKUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
        [v16 horizontalPadding];
        left = v17;

        if (v11)
        {
          right = left;
          left = 0.0;
        }

        else
        {
          v18 = [(SKUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
          [v18 horizontalPadding];
          right = v19;
        }
      }

      if (!self->_gridViewElementStyleItemWidthIsPercentage)
      {
        self->_cellPaddingLeftEdgeHorizontal = left;
        self->_cellPaddingRightEdgeHorizontal = right;
        numberOfColumns = self->_numberOfColumns;
        v22 = (v7 - left - right) / (numberOfColumns - 1) * 0.5;
        v23 = floorf(v22);
        self->_cellPaddingInteriorHorizontal = v23;
        if (right < v23)
        {
          v24 = v7 / ((numberOfColumns + 1) + (numberOfColumns + 1));
          v25 = floorf(v24);
          v26 = v25 + v25;
          self->_cellPaddingRightEdgeHorizontal = v25 + v25;
          v27 = fmax(left - right, 0.0);
          if (v11)
          {
            v26 = v27;
          }

          self->_cellPaddingInteriorHorizontal = v25;
          self->_cellPaddingLeftEdgeHorizontal = v26;
        }

        goto LABEL_25;
      }

      self->_cellPaddingLeftEdgeHorizontal = 0.0;
      self->_cellPaddingRightEdgeHorizontal = 0.0;
      if (!self->_hasGridViewElementStyle)
      {
        self->_cellPaddingInteriorHorizontal = 0.0;
        goto LABEL_25;
      }

      v20 = self->_gridViewElementStyleElementPadding.left;
      if (v20 < self->_gridViewElementStyleElementPadding.right)
      {
        v20 = self->_gridViewElementStyleElementPadding.right;
      }

      v15 = v20 * 0.5;
    }

    else
    {
      if (v10)
      {
        self->_cellPaddingLeftEdgeHorizontal = 0.0;
        self->_cellPaddingRightEdgeHorizontal = v7;
        self->_cellPaddingInteriorHorizontal = v7;
LABEL_25:
        self->_cellPaddingNeedsReloading = 0;
        return;
      }

      v14 = v7 * 0.5;
      v15 = floorf(v14);
      self->_cellPaddingLeftEdgeHorizontal = v15;
      self->_cellPaddingRightEdgeHorizontal = v15;
    }

    self->_cellPaddingInteriorHorizontal = v15;
    goto LABEL_25;
  }
}

- (BOOL)_useOrdinalPadding
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = [(NSArray *)self->_viewElements firstObject];
  if ([v3 elementType] == 48 && -[NSArray count](self->_viewElements, "count") >= 2)
  {
    v4 = [(NSArray *)self->_viewElements objectAtIndex:1];

    v3 = v4;
  }

  if ([v3 elementType] == 66)
  {
    [(SKUIViewElementLayoutContext *)self->_cellLayoutContext largeScreenElementPadding];
    v6.f64[1] = v5;
    v8.f64[1] = v7;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x277D768C8], v8), vceqq_f64(*(MEMORY[0x277D768C8] + 16), v6)))))
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __65__SKUIGridViewElementPageSectionConfiguration__useOrdinalPadding__block_invoke;
      v11[3] = &unk_2781F8568;
      v11[4] = &v12;
      [v3 enumerateChildrenUsingBlock:v11];
    }
  }

  v9 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __65__SKUIGridViewElementPageSectionConfiguration__useOrdinalPadding__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 elementType];
  *(*(*(a1 + 32) + 8) + 24) = result == 80;
  *a3 = 1;
  return result;
}

- (SKUIGridViewElementPageSectionConfigurationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)updateLayoutPropertiesForGridViewElement:(uint8_t *)buf .cold.2(uint8_t *buf, void *a2)
{
  *buf = 136446210;
  *a2 = "SKUIGridViewElementIsFullWidth";
}

@end