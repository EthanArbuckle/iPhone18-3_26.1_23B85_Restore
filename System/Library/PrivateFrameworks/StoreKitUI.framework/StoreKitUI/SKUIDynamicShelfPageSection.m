@interface SKUIDynamicShelfPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIDynamicShelfPageSection)initWithPageComponent:(id)a3;
- (SKUIDynamicShelfPageSection)initWithPageComponent:(id)a3 configuration:(id)a4;
- (SKUIScrollViewDelegateObserver)scrollViewDelegateObserver;
- (UIEdgeInsets)sectionContentInset;
- (id)_normalizedShelfItemIndexPathFromActualIndexPath:(id)a3;
- (id)_viewElementForEntityAtGlobalIndex:(int64_t)a3;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)relevantEntityProviders;
- (int64_t)applyUpdateType:(int64_t)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_reloadViewElementProperties;
- (void)_setContext:(id)a3;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionView:(id)a3 didConfirmButtonElement:(id)a4 withClickInfo:(id)a5 forItemAtIndexPath:(id)a6;
- (void)collectionView:(id)a3 layout:(id)a4 willApplyLayoutAttributes:(id)a5;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)deselectItemsAnimated:(BOOL)a3;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)invalidateCachedLayoutInformation;
- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setSectionIndex:(int64_t)a3;
- (void)setTopSection:(BOOL)a3;
- (void)willAppearInContext:(id)a3;
- (void)willHideInContext:(id)a3;
@end

@implementation SKUIDynamicShelfPageSection

- (SKUIDynamicShelfPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDynamicShelfPageSection initWithPageComponent:];
  }

  v5 = [(SKUIDynamicShelfPageSection *)self initWithPageComponent:v4 configuration:0];

  return v5;
}

- (SKUIDynamicShelfPageSection)initWithPageComponent:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDynamicShelfPageSection initWithPageComponent:configuration:];
  }

  v12.receiver = self;
  v12.super_class = SKUIDynamicShelfPageSection;
  v8 = [(SKUIStorePageSection *)&v12 initWithPageComponent:v6];
  if (v8)
  {
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(SKUIShelfPageSectionConfiguration);
    }

    configuration = v8->_configuration;
    v8->_configuration = v9;

    [(SKUIShelfPageSectionConfiguration *)v8->_configuration setDataSource:v8];
    [(SKUIShelfPageSectionConfiguration *)v8->_configuration setShelfCollectionViewDataSource:v8];
    [(SKUIShelfPageSectionConfiguration *)v8->_configuration setShelfCollectionViewDelegate:v8];
    [(SKUIDynamicShelfPageSection *)v8 _reloadViewElementProperties];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[SKUIItemStateCenter defaultCenter];
  [v3 removeObserver:self];

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setShelfCollectionViewDataSource:0];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setShelfCollectionViewDelegate:0];
  v4.receiver = self;
  v4.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v4 dealloc];
}

- (int64_t)applyUpdateType:(int64_t)a3
{
  [(SKUIDynamicShelfPageSection *)self _reloadViewElementProperties];
  if (![(SKUIShelfPageSectionConfiguration *)self->_configuration needsShelfCollectionViewReload])
  {
    [(SKUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewReload:[(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement updateType]!= 0];
  }

  v6.receiver = self;
  v6.super_class = SKUIDynamicShelfPageSection;
  return [(SKUIStorePageSection *)&v6 applyUpdateType:a3];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIShelfPageSectionConfiguration *)self->_configuration backgroundColorForShelfViewElement:self->_dynamicShelfViewElement];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = SKUIDynamicShelfPageSection;
    v5 = [(SKUIStorePageSection *)&v7 backgroundColorForIndexPath:v4];
  }

  return v5;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  configuration = self->_configuration;
  dynamicShelfViewElement = self->_dynamicShelfViewElement;
  dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
  v6 = a3;
  [(SKUIShelfPageSectionConfiguration *)configuration cellSizeForShelfViewElement:dynamicShelfViewElement indexPath:v6 numberOfShelfItems:[(SKUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper totalNumberOfEntities]];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUIDynamicShelfPageSection;
  v4 = a3;
  [(SKUIStorePageSection *)&v5 collectionViewWillApplyLayoutAttributes:v4];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration collectionViewWillApplyLayoutAttributes:v4, v5.receiver, v5.super_class];
}

- (void)deselectItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 deselectItemAtIndexPath:*(*(&v12 + 1) + 8 * v10++) animated:v3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v11 deselectItemsAnimated:v3];
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  if (self->_entityProvider == a3)
  {
    [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper reloadData];
    v6 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
    [v6 reloadData];
  }
}

- (void)invalidateCachedLayoutInformation
{
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewLayout:1];
  v3 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  [v3 reloadData];

  v4.receiver = self;
  v4.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v4 invalidateCachedLayoutInformation];
}

- (id)relevantEntityProviders
{
  v7.receiver = self;
  v7.super_class = SKUIDynamicShelfPageSection;
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

- (UIEdgeInsets)sectionContentInset
{
  configuration = self->_configuration;
  v12.receiver = self;
  v12.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v12 sectionContentInset];
  [(SKUIShelfPageSectionConfiguration *)configuration sectionContentInsetAdjustedFromValue:self->_dynamicShelfViewElement forShelfViewElement:[(SKUIStorePageSection *)self sectionIndex] withSectionIndex:v4, v5, v6, v7];
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)setTopSection:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v5 setTopSection:?];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setTopSection:v3];
}

- (void)willAppearInContext:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 collectionView];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration registerReusableClassesForCollectionView:v5];
  v6 = +[SKUIItemStateCenter defaultCenter];
  [v6 addObserver:self];

  v7 = [SKUIViewElementTextLayoutCache alloc];
  v8 = [v4 textLayoutCache];
  v9 = [(SKUIViewElementTextLayoutCache *)v7 initWithLayoutCache:v8];
  labelLayoutCache = self->_labelLayoutCache;
  self->_labelLayoutCache = v9;

  cellLayoutContext = self->_cellLayoutContext;
  if (!cellLayoutContext)
  {
    v12 = objc_alloc_init(SKUIViewElementLayoutContext);
    v13 = self->_cellLayoutContext;
    self->_cellLayoutContext = v12;

    [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x28280B748];
    [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
    cellLayoutContext = self->_cellLayoutContext;
  }

  v14 = [v4 clientContext];
  [(SKUIViewElementLayoutContext *)cellLayoutContext setClientContext:v14];

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setContainerViewElementType:[(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement elementType]];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setLabelLayoutCache:self->_labelLayoutCache];
  v15 = self->_cellLayoutContext;
  v16 = [v4 parentViewController];
  [(SKUIViewElementLayoutContext *)v15 setParentViewController:v16];

  v17 = self->_cellLayoutContext;
  v18 = [v4 placeholderColor];
  [(SKUIViewElementLayoutContext *)v17 setPlaceholderColor:v18];

  v19 = self->_cellLayoutContext;
  v20 = [v4 resourceLoader];
  [(SKUIViewElementLayoutContext *)v19 setResourceLoader:v20];

  v21 = self->_cellLayoutContext;
  v22 = [v5 tintColor];
  [(SKUIViewElementLayoutContext *)v21 setTintColor:v22];

  [(SKUIShelfPageSectionConfiguration *)self->_configuration setCellLayoutContext:self->_cellLayoutContext];
  v23 = [(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement cellTemplateViewElement];
  v24 = v23;
  if (v23)
  {
    v27[0] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  }

  else
  {
    v25 = 0;
  }

  [(SKUIShelfPageSectionConfiguration *)self->_configuration reloadShelfLayoutDataForShelfViewElement:self->_dynamicShelfViewElement withShelfItemViewElements:v25 requestCellLayouts:1 numberOfShelfItems:[(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities]];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewLayout:1];
  v26.receiver = self;
  v26.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v26 willAppearInContext:v4];
}

- (void)willHideInContext:(id)a3
{
  v4 = a3;
  v5 = +[SKUIItemStateCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v6 willHideInContext:v4];
}

- (void)setSectionIndex:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v5 setSectionIndex:?];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setSectionIndex:a3];
}

- (void)_setContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUIDynamicShelfPageSection;
  v4 = a3;
  [(SKUIStorePageSection *)&v5 _setContext:v4];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setPageSectionContext:v4, v5.receiver, v5.super_class];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  v9 = [v8 indexPathsForVisibleItems];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
        v16 = [v15 cellForItemAtIndexPath:v14];

        [v16 setImage:v7 forArtworkRequest:v6 context:self->_cellLayoutContext];
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SKUIDynamicShelfPageSection_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __65__SKUIDynamicShelfPageSection_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 96) existingShelfCollectionView];
  v15 = [v2 indexPathsForVisibleItems];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 40);
  v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v14 = *v23;
    do
    {
      v3 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v3;
        v4 = *(*(&v22 + 1) + 8 * v3);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v5 = v15;
        v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v19;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v19 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v18 + 1) + 8 * i);
              v11 = [*(*(a1 + 32) + 96) existingShelfCollectionView];
              v12 = [v11 cellForItemAtIndexPath:v10];

              if ([v12 updateWithItemState:v4 context:*(*(a1 + 32) + 88) animated:1] && (objc_msgSend(*(*(a1 + 32) + 96), "supportsDuplicateShelfItems") & 1) == 0)
              {

                goto LABEL_17;
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:

        v3 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SKUIDynamicShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:v5];
  v7 = -[SKUIDynamicShelfPageSection _viewElementForEntityAtGlobalIndex:](self, "_viewElementForEntityAtGlobalIndex:", [v6 item]);
  v8 = [(SKUIShelfPageSectionConfiguration *)self->_configuration cellForShelfItemViewElement:v7 indexPath:v5];

  return v8;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  configuration = self->_configuration;
  v5 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities:a3];

  return [(SKUIShelfPageSectionConfiguration *)configuration numberOfCellsForNumberOfShelfItems:v5];
}

- (void)collectionView:(id)a3 didConfirmButtonElement:(id)a4 withClickInfo:(id)a5 forItemAtIndexPath:(id)a6
{
  v9 = a5;
  v10 = a4;
  v12 = [(SKUIDynamicShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:a6];
  v11 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v12 inSection:{"item"), -[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  [(SKUIStorePageSection *)self collectionViewDidConfirmButtonElement:v10 withClickInfo:v9 forItemAtIndexPath:v11];
}

- (void)collectionView:(id)a3 layout:(id)a4 willApplyLayoutAttributes:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 indexPath];
  v12 = [(SKUIDynamicShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:v9];

  v10 = [v12 item];
  v11 = [(SKUIDynamicShelfPageSection *)self _viewElementForEntityAtGlobalIndex:v10];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration shelfItemsCollectionView:v8 willApplyLayoutAttributes:v7 forViewElement:v11 withItemIndex:v10];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewDidEndDecelerating:v5];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v6 = a3;
  if ([(SKUIShelfPageSectionConfiguration *)self->_configuration rendersWithParallax])
  {
    v4 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
    SKUICollectionViewUpdatePerspectiveCells(v4, 0);
  }

  [(SKUIShelfPageSectionConfiguration *)self->_configuration scrollViewDidScroll:v6];
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewDidScroll:v6];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillBeginDecelerating:v5];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillBeginDragging:v5];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillEndDragging:v10 withVelocity:x targetContentOffset:{y, a5->x, a5->y}];
  }
}

- (id)_normalizedShelfItemIndexPathFromActualIndexPath:(id)a3
{
  configuration = self->_configuration;
  dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
  v5 = a3;
  v6 = [(SKUIShelfPageSectionConfiguration *)configuration normalizedShelfItemIndexPathFromActualIndexPath:v5 numberOfShelfItems:[(SKUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper totalNumberOfEntities]];

  return v6;
}

- (void)_reloadViewElementProperties
{
  v3 = [(SKUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  dynamicShelfViewElement = self->_dynamicShelfViewElement;
  self->_dynamicShelfViewElement = v4;

  [(SKUIShelfPageSectionConfiguration *)self->_configuration setRendersWithPerspective:[(SKUIViewElement *)self->_dynamicShelfViewElement rendersWithPerspective]];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setRendersWithParallax:[(SKUIViewElement *)self->_dynamicShelfViewElement rendersWithParallax]];
  configuration = self->_configuration;
  v7 = [(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement style];
  [(SKUIShelfPageSectionConfiguration *)configuration setShelfViewElementStyle:v7];

  v8 = self->_configuration;
  v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v10 = [(SKUIDynamicShelfPageSection *)self backgroundColorForIndexPath:v9];
  [(SKUIShelfPageSectionConfiguration *)v8 setShelfCollectionViewBackgroundColor:v10];

  v11 = [(SKUIViewElement *)self->_dynamicShelfViewElement entityProvider];
  entityProvider = self->_entityProvider;
  obj = v11;
  if (entityProvider != v11 && ([(SKUIEntityProviding *)entityProvider isEqual:v11]& 1) == 0)
  {
    objc_storeStrong(&self->_entityProvider, obj);
    dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
    if (!dynamicPageSectionIndexMapper)
    {
      v14 = objc_alloc_init(SKUIDynamicPageSectionIndexMapper);
      v15 = self->_dynamicPageSectionIndexMapper;
      self->_dynamicPageSectionIndexMapper = v14;

      dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
    }

    [(SKUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper setEntityProvider:self->_entityProvider];
  }

  [(SKUIShelfPageSectionConfiguration *)self->_configuration reloadLockupTypeForShelfViewElement:self->_dynamicShelfViewElement];
}

- (id)_viewElementForEntityAtGlobalIndex:(int64_t)a3
{
  v4 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper entityIndexPathForGlobalIndex:a3];
  v5 = [(SKUIEntityProviding *)self->_entityProvider entityValueProviderAtIndexPath:v4];
  v6 = [(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement cellTemplateViewElement];
  [v6 setEntityValueProvider:v5];

  return v6;
}

- (SKUIScrollViewDelegateObserver)scrollViewDelegateObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);

  return WeakRetained;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDynamicShelfPageSection initWithPageComponent:]";
}

- (void)initWithPageComponent:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDynamicShelfPageSection initWithPageComponent:configuration:]";
}

@end