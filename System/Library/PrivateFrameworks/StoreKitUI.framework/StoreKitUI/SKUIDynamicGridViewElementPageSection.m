@interface SKUIDynamicGridViewElementPageSection
- (BOOL)_updateShowsSectionHeaders;
- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5;
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIDynamicGridViewElementPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)pinningContentInsetForItemAtIndexPath:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (id)_dynamicGridViewElement;
- (id)_entityValueProviderForGlobalIndex:(int64_t)a3 sectionIndex:(int64_t *)a4;
- (id)_itemTemplateViewElementForEntityValueProvider:(id)a3;
- (id)_sectionTemplateViewElementForEntityValueProvider:(id)a3;
- (id)_templateViewElementsForType:(id)a3 mode:(id)a4;
- (id)_viewElementAtGlobalIndex:(int64_t)a3;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (id)gridViewElementPageSectionConfiguration:(id)a3 viewElementForIndexPath:(id)a4;
- (id)indexPathsForPinningItems;
- (id)relevantEntityProviders;
- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)a3 relativeSectionIndex:(int64_t)a4;
- (int64_t)_entityGlobalIndexForGlobalIndex:(int64_t)a3 returningSection:(int64_t *)a4;
- (int64_t)_globalIndexForEntityGlobalIndex:(int64_t)a3;
- (int64_t)applyUpdateType:(int64_t)a3;
- (int64_t)numberOfCells;
- (int64_t)pinningStyleForItemAtIndexPath:(id)a3;
- (void)_enumerateVisibleCellsUsingBlock:(id)a3;
- (void)_reloadEntityProperties;
- (void)_reloadViewElementProperties;
- (void)_reloadVisibleCellsAnimated:(BOOL)a3;
- (void)_resetLayoutProperties;
- (void)_setContext:(id)a3;
- (void)_updateStyleProperties;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionViewDidConfirmButtonElement:(id)a3 withClickInfo:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)deselectItemsAnimated:(BOOL)a3;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)gridViewElementPageSectionConfiguration:(id)a3 configurePosition:(int64_t *)a4 forItemAtIndexPath:(id)a5;
- (void)invalidateCachedLayoutInformation;
- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4;
- (void)reloadVisibleCellsWithReason:(int64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUIDynamicGridViewElementPageSection

- (SKUIDynamicGridViewElementPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDynamicGridViewElementPageSection initWithPageComponent:];
  }

  v11.receiver = self;
  v11.super_class = SKUIDynamicGridViewElementPageSection;
  v5 = [(SKUIStorePageSection *)&v11 initWithPageComponent:v4];
  if (v5)
  {
    v6 = objc_alloc_init(SKUIMutableIntegerValue);
    reusableGlobalIndexIntegerValue = v5->_reusableGlobalIndexIntegerValue;
    v5->_reusableGlobalIndexIntegerValue = v6;

    v8 = objc_alloc_init(SKUIGridViewElementPageSectionConfiguration);
    configuration = v5->_configuration;
    v5->_configuration = v8;

    [(SKUIGridViewElementPageSectionConfiguration *)v5->_configuration setDataSource:v5];
    [(SKUIDynamicGridViewElementPageSection *)v5 _reloadViewElementProperties];
  }

  return v5;
}

- (void)dealloc
{
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  sectionHeaderGlobalIndices = self->_sectionHeaderGlobalIndices;
  if (sectionHeaderGlobalIndices)
  {
    free(sectionHeaderGlobalIndices);
    self->_sectionHeaderGlobalIndices = 0;
  }

  v4.receiver = self;
  v4.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v4 dealloc];
}

- (int64_t)applyUpdateType:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = SKUIDynamicGridViewElementPageSection;
  result = [(SKUIStorePageSection *)&v9 applyUpdateType:a3];
  if (result != 2)
  {
    v5 = result;
    v6 = [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration showsEditMode];
    v7 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities];
    [(SKUIDynamicGridViewElementPageSection *)self _reloadViewElementProperties];
    [(SKUIDynamicGridViewElementPageSection *)self _invalidateCellSizeCache];
    if (v6 == [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration showsEditMode]|| v7 != [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities])
    {
      v8.receiver = self;
      v8.super_class = SKUIDynamicGridViewElementPageSection;
      return [(SKUIStorePageSection *)&v8 applyUpdateType:v5];
    }

    else
    {
      [(SKUIDynamicGridViewElementPageSection *)self _resetLayoutProperties];
      return 1;
    }
  }

  return result;
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[SKUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [v4 item]);
  if (!v5 || ([(SKUIGridViewElementPageSectionConfiguration *)self->_configuration backgroundColorForViewElement:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8.receiver = self;
    v8.super_class = SKUIDynamicGridViewElementPageSection;
    v6 = [(SKUIStorePageSection *)&v8 backgroundColorForIndexPath:v4];
  }

  return v6;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[SKUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [v4 item]);
  if (v5)
  {
    [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:v5];
    v6 = [(SKUIViewElementLayoutContext *)self->_cellLayoutContext labelLayoutCache];
    v7 = [v6 layoutCache];
    [v7 commitLayoutRequests];

    v8 = [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration cellForViewElement:v5 indexPath:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_templateViewElementsForType:(id)a3 mode:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = [a3 stringByAppendingString:a4];
  }

  else
  {
    v7 = a3;
  }

  v8 = v7;
  v9 = [(NSMutableDictionary *)self->_templateViewElementsCache objectForKey:v7];
  if (!v9)
  {
    v10 = [-[SKUIDynamicGridViewElementPageSection _dynamicGridViewElement](self "_dynamicGridViewElement")];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v26 + 1) + 8 * i) contentViewElement];
          v18 = [v17 children];
          v19 = [v18 firstObject];

          [v11 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    templateViewElementsCache = self->_templateViewElementsCache;
    if (templateViewElementsCache)
    {
      v21 = [v11 copy];
      [(NSMutableDictionary *)templateViewElementsCache setObject:v21 forKey:v8];
    }

    else
    {
      v22 = MEMORY[0x277CBEB38];
      v21 = [v11 copy];
      v23 = [v22 dictionaryWithObject:v21 forKey:v8];
      v24 = self->_templateViewElementsCache;
      self->_templateViewElementsCache = v23;
    }

    v9 = 0;
  }

  return v9;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v57 = [a3 item];
  v4 = MEMORY[0x277CBF3A8];
  usesSizingEntityValueProvider = self->_usesSizingEntityValueProvider;
  self->_usesSizingEntityValueProvider = 1;
  reusableSizeCacheKey = self->_reusableSizeCacheKey;
  if (!reusableSizeCacheKey)
  {
    v7 = objc_alloc_init(_SKUIDynamicGridSizeCacheKey);
    v8 = self->_reusableSizeCacheKey;
    self->_reusableSizeCacheKey = v7;

    reusableSizeCacheKey = self->_reusableSizeCacheKey;
  }

  v9 = *v4;
  v10 = v4[1];
  [(_SKUIDynamicGridSizeCacheKey *)reusableSizeCacheKey setPosition:0];
  if ([(SKUIGridViewElementPageSectionConfiguration *)self->_configuration numberOfColumns]== 1)
  {
    v69 = 0x7FFFFFFFFFFFFFFFLL;
    [(SKUIDynamicGridViewElementPageSection *)self _entityGlobalIndexForGlobalIndex:v57 returningSection:&v69];
    v11 = &SKUITemplateDefinitionViewElementTypeSection;
    if (v69 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = &SKUITemplateDefinitionViewElementTypeItem;
    }

    v12 = *v11;
    if (self->_editing)
    {
      v13 = 0x282802768;
    }

    else
    {
      v13 = 0;
    }

    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v14 = [(SKUIDynamicGridViewElementPageSection *)self _templateViewElementsForType:v12 mode:v13];
    v15 = [v14 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v15)
    {
      v16 = v15;
      v56 = usesSizingEntityValueProvider;
      v17 = 0;
      v60 = 1;
      v18 = &OBJC_IVAR___SKUIStyledButton__borderView;
      v19 = *v66;
      v20 = v10;
      v21 = v9;
      v58 = *v66;
      v59 = v14;
      while (1)
      {
        v22 = 0;
        v62 = v16;
        do
        {
          if (*v66 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v65 + 1) + 8 * v22);
          [(_SKUIDynamicGridSizeCacheKey *)self->_reusableSizeCacheKey setViewElement:v23];
          v24 = v18[268];
          v25 = [*(&self->super.super.isa + v24) objectForKey:self->_reusableSizeCacheKey];
          if (v25)
          {
            [v25 CGSizeValue];
            v27 = v26;
            v29 = v28;
            if ((v17 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v64 = [[SKUISizingEntityValueProvider alloc] initForViewElement:v23];
            [v23 setEntityValueProvider:?];
            independentlySizedViewElement = self->_independentlySizedViewElement;
            v63 = independentlySizedViewElement;
            objc_storeStrong(&self->_independentlySizedViewElement, v23);
            [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:v23];
            v32 = [(SKUIViewElementLayoutContext *)self->_cellLayoutContext labelLayoutCache];
            v33 = [v32 layoutCache];
            [v33 commitLayoutRequests];

            [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration cellSizeForViewElement:v23 indexPath:a3];
            v27 = v34;
            v29 = v35;
            objc_storeStrong(&self->_independentlySizedViewElement, independentlySizedViewElement);
            v36 = *(&self->super.super.isa + v24);
            if (!v36)
            {
              v37 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
              v38 = *(&self->super.super.isa + v24);
              *(&self->super.super.isa + v24) = v37;

              v36 = *(&self->super.super.isa + v24);
            }

            v39 = [MEMORY[0x277CCAE60] valueWithCGSize:{v27, v29}];
            [v36 setObject:v39 forKey:self->_reusableSizeCacheKey];

            v19 = v58;
            v14 = v59;
            v16 = v62;
            v18 = &OBJC_IVAR___SKUIStyledButton__borderView;
            if ((v17 & 1) == 0)
            {
LABEL_24:
              v20 = v29;
              v21 = v27;
              goto LABEL_25;
            }
          }

          v26 = vabdd_f64(v29, v20);
          if (vabdd_f64(v27, v21) > 0.00000011920929 || v26 > 0.00000011920929)
          {
            v60 = 0;
          }

LABEL_25:
          ++v22;
          v17 = 1;
        }

        while (v16 != v22);
        v16 = [v14 countByEnumeratingWithState:&v65 objects:v70 count:{16, v26}];
        if (!v16)
        {

          usesSizingEntityValueProvider = v56;
          if (v60)
          {
            goto LABEL_38;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_30:
  v40 = [(SKUIDynamicGridViewElementPageSection *)self _viewElementAtGlobalIndex:v57];
  if (v40)
  {
    [(_SKUIDynamicGridSizeCacheKey *)self->_reusableSizeCacheKey setViewElement:v40];
    v41 = [(NSMutableDictionary *)self->_sizeCacheKeyToCachedCellSize objectForKey:self->_reusableSizeCacheKey];
    v42 = v41;
    if (v41)
    {
      [v41 CGSizeValue];
      v9 = v43;
      v10 = v44;
    }

    else
    {
      v45 = usesSizingEntityValueProvider;
      [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:v40];
      v46 = [(SKUIViewElementLayoutContext *)self->_cellLayoutContext labelLayoutCache];
      v47 = [v46 layoutCache];
      [v47 commitLayoutRequests];

      [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration cellSizeForViewElement:v40 indexPath:a3];
      v9 = v48;
      v10 = v49;
      sizeCacheKeyToCachedCellSize = self->_sizeCacheKeyToCachedCellSize;
      if (!sizeCacheKeyToCachedCellSize)
      {
        v51 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        v52 = self->_sizeCacheKeyToCachedCellSize;
        self->_sizeCacheKeyToCachedCellSize = v51;

        sizeCacheKeyToCachedCellSize = self->_sizeCacheKeyToCachedCellSize;
      }

      v53 = [MEMORY[0x277CCAE60] valueWithCGSize:{v9, v10}];
      [(NSMutableDictionary *)sizeCacheKeyToCachedCellSize setObject:v53 forKey:self->_reusableSizeCacheKey];

      usesSizingEntityValueProvider = v45;
    }
  }

  v20 = v10;
  v21 = v9;
LABEL_38:
  self->_usesSizingEntityValueProvider = usesSizingEntityValueProvider;
  v54 = v21;
  v55 = v20;
  result.height = v55;
  result.width = v54;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = -[SKUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [v4 item]);
  v6 = [v5 entityValueProvider];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D1B0A8]);
    v8 = [(SKUIStorePageSection *)self context];
    v9 = [v8 clientContext];
    v10 = [v9 _scriptAppContext];
    v11 = [v7 initWithAppContext:v10];

    if (v11)
    {
      [v11 setEntityValueProvider:v6];
      v15 = @"entityValueProvider";
      v16[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __80__SKUIDynamicGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke;
      v14[3] = &unk_2781FAF50;
      v14[4] = self;
      [v5 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:v12 completionBlock:v14];
    }
  }

  v13.receiver = self;
  v13.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v13 collectionViewDidSelectItemAtIndexPath:v4];
}

void __80__SKUIDynamicGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SKUIDynamicGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2;
  block[3] = &unk_2781F80F0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__SKUIDynamicGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v4 = [v2 parentViewController];

  if (SKUIViewControllerIsVisible(v4))
  {
    v3 = [v4 transitionCoordinator];

    if (!v3)
    {
      [*(a1 + 32) deselectItemsAnimated:1];
    }
  }
}

- (void)collectionViewDidConfirmButtonElement:(id)a3 withClickInfo:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SKUIStorePageSection *)self context];
  v12 = [v11 clientContext];
  v13 = [v12 _scriptAppContext];

  if (v13)
  {
    v14 = -[SKUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [v10 item]);
    v15 = [v14 entityValueProvider];
    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x277D1B0A8]) initWithAppContext:v13];
      v17 = v16;
      if (v16)
      {
        [v16 setEntityValueProvider:v15];
        v18 = [v9 mutableCopy];
        [v18 setObject:v17 forKeyedSubscript:@"entityValueProvider"];
        v19 = [v18 copy];
        [v8 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:v19 completionBlock:0];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v20 collectionViewDidConfirmButtonElement:v8 withClickInfo:v9 forItemAtIndexPath:v10];
}

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  configuration = self->_configuration;
  v5 = a3;
  [(SKUIGridViewElementPageSectionConfiguration *)configuration collectionViewWillApplyLayoutAttributes:v5];
  v6.receiver = self;
  v6.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v6 collectionViewWillApplyLayoutAttributes:v5];
}

- (void)deselectItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 indexPathsForSelectedItems];
  v8 = [(SKUIStorePageSection *)self sectionIndex];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 section] == v8)
        {
          [v6 deselectItemAtIndexPath:v14 animated:v3];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15.receiver = self;
  v15.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v15 deselectItemsAnimated:v3];
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  v6 = a4;
  if (self->_entityProvider == a3)
  {
    v10 = v6;
    if (([v6 invalidateEverything] & 1) != 0 || objc_msgSend(v10, "invalidateDataSourceCounts"))
    {
      [(SKUIDynamicGridViewElementPageSection *)self _reloadEntityProperties];
      [(SKUIDynamicGridViewElementPageSection *)self _updateStyleProperties];
      v7 = [(SKUIStorePageSection *)self context];
      v8 = [v7 collectionView];
      v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
      [v8 reloadSections:v9];
    }

    else
    {
      [(CPLRUDictionary *)self->_globalIndexToTemplateViewElementCache removeAllObjects];
      [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper reloadData];
      [(SKUIDynamicGridViewElementPageSection *)self _reloadVisibleCellsAnimated:0];
    }

    v6 = v10;
  }
}

- (id)indexPathsForPinningItems
{
  v3 = [(SKUIStorePageSection *)self sectionIndex];
  if (self->_numberOfSections)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_numberOfSections)
    {
      v6 = 0;
      do
      {
        v7 = [MEMORY[0x277CCAA70] indexPathForItem:self->_sectionHeaderGlobalIndices[v6] inSection:v4];
        [v5 addObject:v7];

        ++v6;
      }

      while (v6 < self->_numberOfSections);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)invalidateCachedLayoutInformation
{
  [(SKUIDynamicGridViewElementPageSection *)self _invalidateCellSizeCache];
  v3.receiver = self;
  v3.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v3 invalidateCachedLayoutInformation];
}

- (int64_t)numberOfCells
{
  v3 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities];
  if (self->_showsSectionHeaders)
  {
    v3 += [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper numberOfSections];
  }

  return v3;
}

- (UIEdgeInsets)pinningContentInsetForItemAtIndexPath:(id)a3
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (int64_t)pinningStyleForItemAtIndexPath:(id)a3
{
  v4 = -[SKUIDynamicGridViewElementPageSection _entityValueProviderForGlobalIndex:sectionIndex:](self, "_entityValueProviderForGlobalIndex:sectionIndex:", [a3 item], 0);
  v5 = [(SKUIDynamicGridViewElementPageSection *)self _sectionTemplateViewElementForEntityValueProvider:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = [v5 pinStyle];
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = 2;
        goto LABEL_12;
      case 4:
        v8 = 3;
        goto LABEL_12;
      case 5:
        v8 = 4;
        goto LABEL_12;
    }

LABEL_11:
    v8 = [(SKUIStorePageSection *)self defaultItemPinningStyle];
    goto LABEL_12;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  if (v7 == 1)
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (v7 != 2)
  {
    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (id)relevantEntityProviders
{
  v7.receiver = self;
  v7.super_class = SKUIDynamicGridViewElementPageSection;
  v3 = [(SKUIStorePageSection *)&v7 relevantEntityProviders];
  v4 = v3;
  if (self->_entityProvider)
  {
    if (v3)
    {
      v5 = [v3 setByAddingObject:?];

      v4 = v5;
    }

    else
    {
      v4 = [MEMORY[0x277CBEB98] setWithObject:?];
    }
  }

  return v4;
}

- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4
{
  v7 = a3;
  v6 = -[SKUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [v7 item]);
  if (v6)
  {
    [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration reloadCellWithIndexPath:v7 forViewElement:v6 reason:a4];
  }
}

- (void)reloadVisibleCellsWithReason:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v6 reloadVisibleCellsWithReason:a3];
  cellLayoutContext = self->_cellLayoutContext;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKUIGridViewElementPageSectionConfiguration showsEditMode](self->_configuration, "showsEditMode")}];
  [(SKUIViewElementLayoutContext *)cellLayoutContext setAggregateValue:v5 forKey:0x28280D5A8];
}

- (UIEdgeInsets)sectionContentInset
{
  configuration = self->_configuration;
  v25.receiver = self;
  v25.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v25 sectionContentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SKUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  [(SKUIGridViewElementPageSectionConfiguration *)configuration sectionContentInsetAdjustedFromValue:v12 forGridViewElement:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)a3 relativeSectionIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(SKUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];
  v9 = [v8 indexBarEntryID];
  v10 = [v6 isEqualToString:v9];

  if (v10)
  {
    if (self->_showsSectionHeaders)
    {
      if (self->_numberOfSections > a4)
      {
        v11 = self->_sectionHeaderGlobalIndices[a4];
        v12 = MEMORY[0x277CCAA70];
        v13 = [(SKUIStorePageSection *)self sectionIndex];
        v14 = v12;
        v15 = v11;
LABEL_7:
        v19 = [v14 indexPathForItem:v15 inSection:v13];
        goto LABEL_9;
      }
    }

    else if ([(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper numberOfSections]> a4)
    {
      v16 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper rangeForSectionAtIndex:a4];
      v17 = MEMORY[0x277CCAA70];
      v18 = [(SKUIDynamicGridViewElementPageSection *)self _globalIndexForEntityGlobalIndex:v16];
      v13 = [(SKUIStorePageSection *)self sectionIndex];
      v14 = v17;
      v15 = v18;
      goto LABEL_7;
    }
  }

  v19 = 0;
LABEL_9:

  return v19;
}

- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SKUIStorePageSection *)self context];
  v11 = [v10 collectionView];
  v12 = [v11 cellForItemAtIndexPath:v8];

  v13 = [v12 updateWithItemState:v9 context:self->_cellLayoutContext animated:v5];
  if (v13)
  {
    v14 = -[SKUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [v8 item]);
    if (v14)
    {
      [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:v14];
    }
  }

  return v13;
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration registerReusableClassesForCollectionView:v5];
  v6 = [SKUIViewElementTextLayoutCache alloc];
  v7 = [v4 textLayoutCache];
  v8 = [(SKUIViewElementTextLayoutCache *)v6 initWithLayoutCache:v7];
  labelLayoutCache = self->_labelLayoutCache;
  self->_labelLayoutCache = v8;

  cellLayoutContext = self->_cellLayoutContext;
  if (cellLayoutContext)
  {
    [(SKUIViewElementLayoutContext *)cellLayoutContext setArtworkRequestDelegate:0];
  }

  v11 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4];
  v12 = self->_cellLayoutContext;
  self->_cellLayoutContext = v11;

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  v13 = self->_cellLayoutContext;
  v14 = [v4 parentViewController];
  v15 = [v14 clientContext];
  [(SKUIViewElementLayoutContext *)v13 setClientContext:v15];

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setLabelLayoutCache:self->_labelLayoutCache];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x28280A728];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:&unk_2828D2C48 forKey:0x282804A28];
  v16 = self->_cellLayoutContext;
  v17 = [v4 parentViewController];
  [(SKUIViewElementLayoutContext *)v16 setParentViewController:v17];

  v18 = self->_cellLayoutContext;
  v19 = [v4 resourceLoader];
  [(SKUIViewElementLayoutContext *)v18 setResourceLoader:v19];

  v20 = self->_cellLayoutContext;
  v21 = [v5 tintColor];
  [(SKUIViewElementLayoutContext *)v20 setTintColor:v21];

  v22 = [(SKUIStorePageSection *)self pageComponent];
  v23 = [v22 viewElement];

  -[SKUIViewElementLayoutContext setContainerViewElementType:](self->_cellLayoutContext, "setContainerViewElementType:", [v23 elementType]);
  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration setCellLayoutContext:self->_cellLayoutContext];
  [(SKUIDynamicGridViewElementPageSection *)self _resetLayoutProperties];
  [(SKUIDynamicGridViewElementPageSection *)self _invalidateCellSizeCache];
  v24.receiver = self;
  v24.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v24 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  cellLayoutContext = self->_cellLayoutContext;
  v8 = a4;
  [(SKUIViewElementLayoutContext *)cellLayoutContext setActivePageWidth:width];
  [(SKUIDynamicGridViewElementPageSection *)self _resetLayoutProperties];
  [(SKUIDynamicGridViewElementPageSection *)self _invalidateCellSizeCache];
  v9.receiver = self;
  v9.super_class = SKUIDynamicGridViewElementPageSection;
  [(SKUIStorePageSection *)&v9 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)_setContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUIDynamicGridViewElementPageSection;
  v4 = a3;
  [(SKUIStorePageSection *)&v5 _setContext:v4];
  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration setPageSectionContext:v4, v5.receiver, v5.super_class];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SKUIDynamicGridViewElementPageSection_artworkRequest_didLoadImage___block_invoke;
  v10[3] = &unk_2781FCCE8;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(SKUIDynamicGridViewElementPageSection *)self _enumerateVisibleCellsUsingBlock:v10];
}

void __69__SKUIDynamicGridViewElementPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) _viewElementAtGlobalIndex:{objc_msgSend(a3, "item")}];
  v6 = [v5 elementType];
  v7 = (v6 - 14) > 0x34 || ((1 << (v6 - 14)) & 0x10001C00000001) == 0;
  if ((!v7 || v6 == 152) && [v8 conformsToProtocol:&unk_2828E62D0])
  {
    [v8 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 32) + 88)];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(SKUIDynamicGridViewElementPageSection *)self _reloadVisibleCellsAnimated:a4];
  }
}

- (id)gridViewElementPageSectionConfiguration:(id)a3 viewElementForIndexPath:(id)a4
{
  independentlySizedViewElement = self->_independentlySizedViewElement;
  if (independentlySizedViewElement)
  {
    v5 = independentlySizedViewElement;
  }

  else
  {
    v5 = -[SKUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [a4 item]);
  }

  return v5;
}

- (void)gridViewElementPageSectionConfiguration:(id)a3 configurePosition:(int64_t *)a4 forItemAtIndexPath:(id)a5
{
  if (self->_showsSectionHeaders)
  {
    v16[5] = v5;
    v16[6] = v6;
    v16[0] = 0x7FFFFFFFFFFFFFFFLL;
    v9 = -[SKUIDynamicGridViewElementPageSection _entityGlobalIndexForGlobalIndex:returningSection:](self, "_entityGlobalIndexForGlobalIndex:returningSection:", [a5 item], v16);
    if (v16[0] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
      v15 = 0;
      if (![(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper getItem:&v15 section:&v14 forGlobalIndex:v9])
      {
        return;
      }

      if (v15)
      {
        v10 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper rangeForSectionAtIndex:v14];
        if (v15 != v11 + v10 - 1)
        {
          return;
        }

        v12 = 32;
      }

      else
      {
        v12 = 8;
      }

      v13 = *a4 & 0xFFFFFFFFFFFFFFC7 | v12;
    }

    else
    {
      v13 = *a4 & 0xFFFFFFFFFFFFFFC7 | 0x10;
    }

    *a4 = v13;
  }
}

- (id)_dynamicGridViewElement
{
  v2 = [(SKUIStorePageSection *)self pageComponent];
  v3 = [v2 viewElement];

  return v3;
}

- (int64_t)_entityGlobalIndexForGlobalIndex:(int64_t)a3 returningSection:(int64_t *)a4
{
  if (self->_showsSectionHeaders && (numberOfSections = self->_numberOfSections) != 0)
  {
    v5 = 0;
    v6 = a3 - numberOfSections;
    while (1)
    {
      v7 = self->_sectionHeaderGlobalIndices[v5];
      if (v7 >= a3)
      {
        break;
      }

      if (numberOfSections == ++v5)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
        a3 = v6;
        if (a4)
        {
          goto LABEL_9;
        }

        return a3;
      }
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (v7 == a3)
    {
      v8 = v5;
    }

    a3 -= v5;
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (a4)
    {
LABEL_9:
      *a4 = v8;
    }
  }

  return a3;
}

- (id)_entityValueProviderForGlobalIndex:(int64_t)a3 sectionIndex:(int64_t *)a4
{
  v7 = [(SKUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue integerValue];
  [(SKUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue setIntegerValue:a3];
  v8 = [(CPLRUDictionary *)self->_globalIndexToEntityValueProviderValueCache objectForKey:self->_reusableGlobalIndexIntegerValue];
  v17 = 0;
  if (v8)
  {
    v9 = v8;
    v17 = [(_SKUIDynamicGridEntityValueProviderValue *)v8 sectionIndex];
    v10 = [(_SKUIDynamicGridEntityValueProviderValue *)v9 entityValueProvider];
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = [(SKUIDynamicGridViewElementPageSection *)self _entityGlobalIndexForGlobalIndex:a3 returningSection:&v17];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper entityIndexPathForGlobalIndex:v12];
    if (v13)
    {
      v10 = [(SKUIEntityProviding *)self->_entityProvider entityValueProviderAtIndexPath:v13];
    }

    else
    {
      v10 = 0;
    }
  }

  else if (*&self->_entityProviderFlags)
  {
    v10 = [(SKUIEntityProviding *)self->_entityProvider sectionEntityValueProviderAtIndex:?];
  }

  else
  {
    v10 = 0;
  }

  v9 = objc_alloc_init(_SKUIDynamicGridEntityValueProviderValue);
  [(_SKUIDynamicGridEntityValueProviderValue *)v9 setSectionIndex:v17];
  [(_SKUIDynamicGridEntityValueProviderValue *)v9 setEntityValueProvider:v10];
  globalIndexToEntityValueProviderValueCache = self->_globalIndexToEntityValueProviderValueCache;
  if (!globalIndexToEntityValueProviderValueCache)
  {
    v15 = [objc_alloc(MEMORY[0x277CEC5A8]) initWithMaximumCapacity:50];
    v16 = self->_globalIndexToEntityValueProviderValueCache;
    self->_globalIndexToEntityValueProviderValueCache = v15;

    globalIndexToEntityValueProviderValueCache = self->_globalIndexToEntityValueProviderValueCache;
  }

  [(CPLRUDictionary *)globalIndexToEntityValueProviderValueCache setObject:v9 forKey:self->_reusableGlobalIndexIntegerValue];
  if (a4)
  {
LABEL_3:
    *a4 = v17;
  }

LABEL_4:
  [(SKUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue setIntegerValue:v7];

  return v10;
}

- (void)_enumerateVisibleCellsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 visibleCells];
  v8 = [(SKUIStorePageSection *)self sectionIndex];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SKUIDynamicGridViewElementPageSection__enumerateVisibleCellsUsingBlock___block_invoke;
  v11[3] = &unk_2781FCD10;
  v13 = v4;
  v14 = v8;
  v12 = v6;
  v9 = v4;
  v10 = v6;
  [v7 enumerateObjectsUsingBlock:v11];
}

void __74__SKUIDynamicGridViewElementPageSection__enumerateVisibleCellsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) indexPathForCell:?];
  v4 = v3;
  if (v3 && [v3 section] == *(a1 + 48))
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (int64_t)_globalIndexForEntityGlobalIndex:(int64_t)a3
{
  if (!self->_showsSectionHeaders)
  {
    return a3;
  }

  numberOfSections = self->_numberOfSections;
  if (!numberOfSections)
  {
    return a3;
  }

  sectionHeaderGlobalIndices = self->_sectionHeaderGlobalIndices;
  result = a3;
  do
  {
    v6 = *sectionHeaderGlobalIndices++;
    if (v6 <= a3)
    {
      ++result;
    }

    --numberOfSections;
  }

  while (numberOfSections);
  return result;
}

- (id)_itemTemplateViewElementForEntityValueProvider:(id)a3
{
  v4 = a3;
  v5 = [(SKUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  v6 = v5;
  if (self->_editing)
  {
    v7 = 0x282802768;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 templateDefinitionViewElementsForType:0x282802788 mode:v7];
  v9 = [v6 bestTemplateDefinitionViewElementFromTemplateDefinitionViewElements:v8 entityValueProvider:v4];

  v10 = [v9 contentViewElement];
  v11 = [v10 children];
  v12 = [v11 firstObject];

  return v12;
}

- (void)_reloadEntityProperties
{
  [(CPLRUDictionary *)self->_globalIndexToEntityValueProviderValueCache removeAllObjects];
  [(CPLRUDictionary *)self->_globalIndexToTemplateViewElementCache removeAllObjects];
  [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper reloadData];
  [(SKUIDynamicGridViewElementPageSection *)self _updateShowsSectionHeaders];
  sectionHeaderGlobalIndices = self->_sectionHeaderGlobalIndices;
  if (sectionHeaderGlobalIndices)
  {
    free(sectionHeaderGlobalIndices);
    self->_sectionHeaderGlobalIndices = 0;
  }

  if (self->_showsSectionHeaders)
  {
    v4 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper numberOfSections];
    self->_sectionHeaderGlobalIndices = malloc_type_calloc(v4, 8uLL, 0x100004000313F17uLL);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        self->_sectionHeaderGlobalIndices[v5] = v6;
        [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper rangeForSectionAtIndex:v5];
        v6 += v7 + 1;
        ++v5;
      }

      while (v4 != v5);
    }

    self->_numberOfSections = v4;
  }
}

- (void)_reloadViewElementProperties
{
  [(NSMutableDictionary *)self->_templateViewElementsCache removeAllObjects];
  v11 = [(SKUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  v3 = [v11 explicitEntityProvider];
  entityProvider = self->_entityProvider;
  if (entityProvider == v3 || ([(SKUIEntityProviding *)entityProvider isEqual:v3]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    objc_storeStrong(&self->_entityProvider, v3);
    *&self->_entityProviderFlags = *&self->_entityProviderFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
    if (!dynamicPageSectionIndexMapper)
    {
      v7 = objc_alloc_init(SKUIDynamicPageSectionIndexMapper);
      v8 = self->_dynamicPageSectionIndexMapper;
      self->_dynamicPageSectionIndexMapper = v7;

      dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
    }

    [(SKUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper setEntityProvider:self->_entityProvider];
    v5 = 1;
  }

  v9 = [v11 minimumEntityCountForSections];
  if (self->_minimumEntityCountForSections != v9)
  {
    self->_minimumEntityCountForSections = v9;
    -[SKUIGridViewElementPageSectionConfiguration setRendersWithPerspective:](self->_configuration, "setRendersWithPerspective:", [v11 rendersWithPerspective]);
    goto LABEL_11;
  }

  -[SKUIGridViewElementPageSectionConfiguration setRendersWithPerspective:](self->_configuration, "setRendersWithPerspective:", [v11 rendersWithPerspective]);
  if (v5)
  {
LABEL_11:
    [(SKUIDynamicGridViewElementPageSection *)self _reloadEntityProperties];
  }

  [(SKUIDynamicGridViewElementPageSection *)self _updateStyleProperties];
  v10 = [v11 collectionFeature];
  [v10 setCollectionTarget:self];
}

- (void)_reloadVisibleCellsAnimated:(BOOL)a3
{
  v4 = [(SKUIViewElementLayoutContext *)self->_cellLayoutContext labelLayoutCache];
  v5 = [v4 layoutCache];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SKUIDynamicGridViewElementPageSection__reloadVisibleCellsAnimated___block_invoke;
  v7[3] = &unk_2781FD2C8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(SKUIDynamicGridViewElementPageSection *)self _enumerateVisibleCellsUsingBlock:v7];
}

void __69__SKUIDynamicGridViewElementPageSection__reloadVisibleCellsAnimated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 conformsToProtocol:&unk_2828E62D0])
  {
    v6 = [*(a1 + 32) _viewElementAtGlobalIndex:{objc_msgSend(v5, "item")}];
    if (v6)
    {
      [*(*(a1 + 32) + 96) requestCellLayoutForViewElement:v6];
      [*(a1 + 40) commitLayoutRequests];
      [*(*(a1 + 32) + 96) configureCell:v7 forViewElement:v6 indexPath:v5];
    }
  }
}

- (void)_resetLayoutProperties
{
  configuration = self->_configuration;
  v4 = [(SKUIStorePageSection *)self pageComponent];
  v3 = [v4 viewElement];
  [(SKUIGridViewElementPageSectionConfiguration *)configuration updateLayoutPropertiesForGridViewElement:v3];
}

- (id)_sectionTemplateViewElementForEntityValueProvider:(id)a3
{
  v4 = a3;
  v5 = [(SKUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  v6 = v5;
  if (self->_editing)
  {
    v7 = 0x282802768;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 templateDefinitionViewElementsForType:0x2828027A8 mode:v7];
  v9 = [v6 bestTemplateDefinitionViewElementFromTemplateDefinitionViewElements:v8 entityValueProvider:v4];

  v10 = [v9 contentViewElement];
  v11 = [v10 children];
  v12 = [v11 firstObject];

  return v12;
}

- (BOOL)_updateShowsSectionHeaders
{
  v3 = [(SKUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  if ([v3 hasSectionHeaders])
  {
    v4 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities]>= self->_minimumEntityCountForSections;
  }

  else
  {
    v4 = 0;
  }

  showsSectionHeaders = self->_showsSectionHeaders;
  if (showsSectionHeaders != v4)
  {
    self->_showsSectionHeaders = v4;
  }

  return showsSectionHeaders != v4;
}

- (void)_updateStyleProperties
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  v4 = v3;
  if (self->_editing)
  {
    v5 = 0x282802768;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 templateDefinitionViewElementsForType:0x282802788 mode:v5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) contentViewElement];
        v13 = [v12 children];
        if ([v13 count])
        {
          if (!v9)
          {
            v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
          }

          [v9 addObjectsFromArray:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration updateStylePropertiesForGridViewElement:v4 gridItemViewElements:v9 numberOfGridItems:[(SKUIDynamicGridViewElementPageSection *)self numberOfCells]];
}

- (id)_viewElementAtGlobalIndex:(int64_t)a3
{
  v5 = [(SKUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue integerValue];
  [(SKUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue setIntegerValue:a3];
  v6 = [(CPLRUDictionary *)self->_globalIndexToTemplateViewElementCache objectForKey:self->_reusableGlobalIndexIntegerValue];
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(SKUIDynamicGridViewElementPageSection *)self _entityValueProviderForGlobalIndex:a3 sectionIndex:&v15];
  if (v6)
  {
    if (!self->_usesSizingEntityValueProvider)
    {
      goto LABEL_13;
    }

LABEL_11:
    v11 = [[SKUISizingEntityValueProvider alloc] initForViewElement:v6];
    [v6 setEntityValueProvider:v11];

    goto LABEL_14;
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SKUIDynamicGridViewElementPageSection *)self _itemTemplateViewElementForEntityValueProvider:v7];
  }

  else
  {
    [(SKUIDynamicGridViewElementPageSection *)self _sectionTemplateViewElementForEntityValueProvider:v7];
  }
  v6 = ;
  if (!v6)
  {
    goto LABEL_14;
  }

  globalIndexToTemplateViewElementCache = self->_globalIndexToTemplateViewElementCache;
  if (!globalIndexToTemplateViewElementCache)
  {
    v9 = [objc_alloc(MEMORY[0x277CEC5A8]) initWithMaximumCapacity:50];
    v10 = self->_globalIndexToTemplateViewElementCache;
    self->_globalIndexToTemplateViewElementCache = v9;

    globalIndexToTemplateViewElementCache = self->_globalIndexToTemplateViewElementCache;
  }

  [(CPLRUDictionary *)globalIndexToTemplateViewElementCache setObject:v6 forKey:self->_reusableGlobalIndexIntegerValue];
  if (self->_usesSizingEntityValueProvider)
  {
    goto LABEL_11;
  }

  v12 = [v6 entityValueProperties];
  v13 = [v7 valuesForEntityProperties:v12];

LABEL_13:
  [v6 setEntityValueProvider:v7];
LABEL_14:
  [(SKUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue setIntegerValue:v5];

  return v6;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDynamicGridViewElementPageSection initWithPageComponent:]";
}

@end