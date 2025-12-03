@interface SKUIDynamicShelfPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUIDynamicShelfPageSection)initWithPageComponent:(id)component;
- (SKUIDynamicShelfPageSection)initWithPageComponent:(id)component configuration:(id)configuration;
- (SKUIScrollViewDelegateObserver)scrollViewDelegateObserver;
- (UIEdgeInsets)sectionContentInset;
- (id)_normalizedShelfItemIndexPathFromActualIndexPath:(id)path;
- (id)_viewElementForEntityAtGlobalIndex:(int64_t)index;
- (id)backgroundColorForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)relevantEntityProviders;
- (int64_t)applyUpdateType:(int64_t)type;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_reloadViewElementProperties;
- (void)_setContext:(id)context;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionView:(id)view didConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view layout:(id)layout willApplyLayoutAttributes:(id)attributes;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)deselectItemsAnimated:(BOOL)animated;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)invalidateCachedLayoutInformation;
- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setSectionIndex:(int64_t)index;
- (void)setTopSection:(BOOL)section;
- (void)willAppearInContext:(id)context;
- (void)willHideInContext:(id)context;
@end

@implementation SKUIDynamicShelfPageSection

- (SKUIDynamicShelfPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDynamicShelfPageSection initWithPageComponent:];
  }

  v5 = [(SKUIDynamicShelfPageSection *)self initWithPageComponent:componentCopy configuration:0];

  return v5;
}

- (SKUIDynamicShelfPageSection)initWithPageComponent:(id)component configuration:(id)configuration
{
  componentCopy = component;
  configurationCopy = configuration;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDynamicShelfPageSection initWithPageComponent:configuration:];
  }

  v12.receiver = self;
  v12.super_class = SKUIDynamicShelfPageSection;
  v8 = [(SKUIStorePageSection *)&v12 initWithPageComponent:componentCopy];
  if (v8)
  {
    if (configurationCopy)
    {
      v9 = configurationCopy;
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

- (int64_t)applyUpdateType:(int64_t)type
{
  [(SKUIDynamicShelfPageSection *)self _reloadViewElementProperties];
  if (![(SKUIShelfPageSectionConfiguration *)self->_configuration needsShelfCollectionViewReload])
  {
    [(SKUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewReload:[(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement updateType]!= 0];
  }

  v6.receiver = self;
  v6.super_class = SKUIDynamicShelfPageSection;
  return [(SKUIStorePageSection *)&v6 applyUpdateType:type];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(SKUIShelfPageSectionConfiguration *)self->_configuration backgroundColorForShelfViewElement:self->_dynamicShelfViewElement];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = SKUIDynamicShelfPageSection;
    v5 = [(SKUIStorePageSection *)&v7 backgroundColorForIndexPath:pathCopy];
  }

  return v5;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  configuration = self->_configuration;
  dynamicShelfViewElement = self->_dynamicShelfViewElement;
  dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
  pathCopy = path;
  [(SKUIShelfPageSectionConfiguration *)configuration cellSizeForShelfViewElement:dynamicShelfViewElement indexPath:pathCopy numberOfShelfItems:[(SKUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper totalNumberOfEntities]];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  v5.receiver = self;
  v5.super_class = SKUIDynamicShelfPageSection;
  attributesCopy = attributes;
  [(SKUIStorePageSection *)&v5 collectionViewWillApplyLayoutAttributes:attributesCopy];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration collectionViewWillApplyLayoutAttributes:attributesCopy, v5.receiver, v5.super_class];
}

- (void)deselectItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x277D85DE8];
  existingShelfCollectionView = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  indexPathsForSelectedItems = [existingShelfCollectionView indexPathsForSelectedItems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [existingShelfCollectionView deselectItemAtIndexPath:*(*(&v12 + 1) + 8 * v10++) animated:animatedCopy];
      }

      while (v8 != v10);
      v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v11 deselectItemsAnimated:animatedCopy];
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  if (self->_entityProvider == provider)
  {
    [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper reloadData];
    existingShelfCollectionView = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
    [existingShelfCollectionView reloadData];
  }
}

- (void)invalidateCachedLayoutInformation
{
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewLayout:1];
  existingShelfCollectionView = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  [existingShelfCollectionView reloadData];

  v4.receiver = self;
  v4.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v4 invalidateCachedLayoutInformation];
}

- (id)relevantEntityProviders
{
  v7.receiver = self;
  v7.super_class = SKUIDynamicShelfPageSection;
  relevantEntityProviders = [(SKUIStorePageSection *)&v7 relevantEntityProviders];
  v4 = relevantEntityProviders;
  if (self->_entityProvider)
  {
    if (relevantEntityProviders)
    {
      v5 = [relevantEntityProviders setByAddingObject:?];

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

- (void)setTopSection:(BOOL)section
{
  sectionCopy = section;
  v5.receiver = self;
  v5.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v5 setTopSection:?];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setTopSection:sectionCopy];
}

- (void)willAppearInContext:(id)context
{
  v27[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration registerReusableClassesForCollectionView:collectionView];
  v6 = +[SKUIItemStateCenter defaultCenter];
  [v6 addObserver:self];

  v7 = [SKUIViewElementTextLayoutCache alloc];
  textLayoutCache = [contextCopy textLayoutCache];
  v9 = [(SKUIViewElementTextLayoutCache *)v7 initWithLayoutCache:textLayoutCache];
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

  clientContext = [contextCopy clientContext];
  [(SKUIViewElementLayoutContext *)cellLayoutContext setClientContext:clientContext];

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setContainerViewElementType:[(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement elementType]];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setLabelLayoutCache:self->_labelLayoutCache];
  v15 = self->_cellLayoutContext;
  parentViewController = [contextCopy parentViewController];
  [(SKUIViewElementLayoutContext *)v15 setParentViewController:parentViewController];

  v17 = self->_cellLayoutContext;
  placeholderColor = [contextCopy placeholderColor];
  [(SKUIViewElementLayoutContext *)v17 setPlaceholderColor:placeholderColor];

  v19 = self->_cellLayoutContext;
  resourceLoader = [contextCopy resourceLoader];
  [(SKUIViewElementLayoutContext *)v19 setResourceLoader:resourceLoader];

  v21 = self->_cellLayoutContext;
  tintColor = [collectionView tintColor];
  [(SKUIViewElementLayoutContext *)v21 setTintColor:tintColor];

  [(SKUIShelfPageSectionConfiguration *)self->_configuration setCellLayoutContext:self->_cellLayoutContext];
  cellTemplateViewElement = [(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement cellTemplateViewElement];
  v24 = cellTemplateViewElement;
  if (cellTemplateViewElement)
  {
    v27[0] = cellTemplateViewElement;
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
  [(SKUIStorePageSection *)&v26 willAppearInContext:contextCopy];
}

- (void)willHideInContext:(id)context
{
  contextCopy = context;
  v5 = +[SKUIItemStateCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v6 willHideInContext:contextCopy];
}

- (void)setSectionIndex:(int64_t)index
{
  v5.receiver = self;
  v5.super_class = SKUIDynamicShelfPageSection;
  [(SKUIStorePageSection *)&v5 setSectionIndex:?];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setSectionIndex:index];
}

- (void)_setContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SKUIDynamicShelfPageSection;
  contextCopy = context;
  [(SKUIStorePageSection *)&v5 _setContext:contextCopy];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setPageSectionContext:contextCopy, v5.receiver, v5.super_class];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  imageCopy = image;
  existingShelfCollectionView = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  indexPathsForVisibleItems = [existingShelfCollectionView indexPathsForVisibleItems];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = indexPathsForVisibleItems;
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
        existingShelfCollectionView2 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
        v16 = [existingShelfCollectionView2 cellForItemAtIndexPath:v14];

        [v16 setImage:imageCopy forArtworkRequest:requestCopy context:self->_cellLayoutContext];
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SKUIDynamicShelfPageSection_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(SKUIDynamicShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:pathCopy];
  v7 = -[SKUIDynamicShelfPageSection _viewElementForEntityAtGlobalIndex:](self, "_viewElementForEntityAtGlobalIndex:", [v6 item]);
  v8 = [(SKUIShelfPageSectionConfiguration *)self->_configuration cellForShelfItemViewElement:v7 indexPath:pathCopy];

  return v8;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  configuration = self->_configuration;
  v5 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities:view];

  return [(SKUIShelfPageSectionConfiguration *)configuration numberOfCellsForNumberOfShelfItems:v5];
}

- (void)collectionView:(id)view didConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path
{
  infoCopy = info;
  elementCopy = element;
  v12 = [(SKUIDynamicShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:path];
  v11 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v12 inSection:{"item"), -[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  [(SKUIStorePageSection *)self collectionViewDidConfirmButtonElement:elementCopy withClickInfo:infoCopy forItemAtIndexPath:v11];
}

- (void)collectionView:(id)view layout:(id)layout willApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  viewCopy = view;
  indexPath = [attributesCopy indexPath];
  v12 = [(SKUIDynamicShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:indexPath];

  item = [v12 item];
  v11 = [(SKUIDynamicShelfPageSection *)self _viewElementForEntityAtGlobalIndex:item];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration shelfItemsCollectionView:viewCopy willApplyLayoutAttributes:attributesCopy forViewElement:v11 withItemIndex:item];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewDidEndDecelerating:deceleratingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(SKUIShelfPageSectionConfiguration *)self->_configuration rendersWithParallax])
  {
    existingShelfCollectionView = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
    SKUICollectionViewUpdatePerspectiveCells(existingShelfCollectionView, 0);
  }

  [(SKUIShelfPageSectionConfiguration *)self->_configuration scrollViewDidScroll:scrollCopy];
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewDidScroll:scrollCopy];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillBeginDecelerating:deceleratingCopy];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillEndDragging:draggingCopy withVelocity:x targetContentOffset:{y, offset->x, offset->y}];
  }
}

- (id)_normalizedShelfItemIndexPathFromActualIndexPath:(id)path
{
  configuration = self->_configuration;
  dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
  pathCopy = path;
  v6 = [(SKUIShelfPageSectionConfiguration *)configuration normalizedShelfItemIndexPathFromActualIndexPath:pathCopy numberOfShelfItems:[(SKUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper totalNumberOfEntities]];

  return v6;
}

- (void)_reloadViewElementProperties
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  dynamicShelfViewElement = self->_dynamicShelfViewElement;
  self->_dynamicShelfViewElement = viewElement;

  [(SKUIShelfPageSectionConfiguration *)self->_configuration setRendersWithPerspective:[(SKUIViewElement *)self->_dynamicShelfViewElement rendersWithPerspective]];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setRendersWithParallax:[(SKUIViewElement *)self->_dynamicShelfViewElement rendersWithParallax]];
  configuration = self->_configuration;
  style = [(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement style];
  [(SKUIShelfPageSectionConfiguration *)configuration setShelfViewElementStyle:style];

  v8 = self->_configuration;
  v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v10 = [(SKUIDynamicShelfPageSection *)self backgroundColorForIndexPath:v9];
  [(SKUIShelfPageSectionConfiguration *)v8 setShelfCollectionViewBackgroundColor:v10];

  entityProvider = [(SKUIViewElement *)self->_dynamicShelfViewElement entityProvider];
  entityProvider = self->_entityProvider;
  obj = entityProvider;
  if (entityProvider != entityProvider && ([(SKUIEntityProviding *)entityProvider isEqual:entityProvider]& 1) == 0)
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

- (id)_viewElementForEntityAtGlobalIndex:(int64_t)index
{
  v4 = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper entityIndexPathForGlobalIndex:index];
  v5 = [(SKUIEntityProviding *)self->_entityProvider entityValueProviderAtIndexPath:v4];
  cellTemplateViewElement = [(SKUIDynamicShelfViewElement *)self->_dynamicShelfViewElement cellTemplateViewElement];
  [cellTemplateViewElement setEntityValueProvider:v5];

  return cellTemplateViewElement;
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