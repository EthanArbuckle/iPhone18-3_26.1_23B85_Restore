@interface SKUIKeyValueInfoListPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIKeyValueInfoListPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (int64_t)applyUpdateType:(int64_t)a3;
- (void)_enumerateVisibleViewElementsUsingBlock:(id)a3;
- (void)_reloadViewElementProperties;
- (void)_requestCellLayout;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUIKeyValueInfoListPageSection

- (SKUIKeyValueInfoListPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIKeyValueInfoListPageSection initWithPageComponent:];
  }

  v8.receiver = self;
  v8.super_class = SKUIKeyValueInfoListPageSection;
  v5 = [(SKUIStorePageSection *)&v8 initWithPageComponent:v4];
  v6 = v5;
  if (v5)
  {
    [(SKUIKeyValueInfoListPageSection *)v5 _reloadViewElementProperties];
  }

  return v6;
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKUIStorePageSection *)self pageComponent];
  v9 = [v8 viewElement];
  [v6 addItemViewElement:v9];

  viewElements = self->_viewElements;
  v11 = [v7 item];

  v12 = [(NSArray *)viewElements objectAtIndex:v11];
  [v6 addItemViewElement:v12];
}

- (int64_t)applyUpdateType:(int64_t)a3
{
  [(SKUIKeyValueInfoListPageSection *)self _reloadViewElementProperties];
  v6.receiver = self;
  v6.super_class = SKUIKeyValueInfoListPageSection;
  return [(SKUIStorePageSection *)&v6 applyUpdateType:a3];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v4 item]);
  v6 = [v5 style];
  v7 = [v6 ikBackgroundColor];
  v8 = [v7 color];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SKUIKeyValueInfoListPageSection;
    v9 = [(SKUIStorePageSection *)&v12 backgroundColorForIndexPath:v4];
  }

  v10 = v9;

  return v10;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:0x28280DC28 forIndexPath:v4];
  v8 = [(SKUIStorePageSection *)self context];
  [v8 horizontalPadding];
  v10 = v9;
  v11 = [(SKUIStorePageSection *)self context];
  [v11 horizontalPadding];
  [v7 setContentInset:{0.0, v10, 3.0, v12}];

  [v5 activePageWidth];
  v14 = v13;
  v15 = [(SKUIStorePageSection *)self context];
  [v15 horizontalPadding];
  v17 = v14 + v16 * -2.0;

  viewElements = self->_viewElements;
  v19 = [v4 item];

  v20 = [(NSArray *)viewElements objectAtIndex:v19];
  [v7 reloadWithViewElement:v20 width:self->_cellLayoutContext context:v17];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  [v5 activePageWidth];
  v7 = v6;

  viewElements = self->_viewElements;
  v9 = [v4 item];

  v10 = [(NSArray *)viewElements objectAtIndex:v9];
  v11 = [(SKUIStorePageSection *)self context];
  [v11 horizontalPadding];
  [SKUIKeyValueInfoListCollectionViewCell sizeThatFitsWidth:v10 viewElement:self->_cellLayoutContext context:v7 + v12 * -2.0];
  v14 = v13;

  v15 = v7;
  v16 = v14 + 3.0;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 activeMetricsImpressionSession];

  v7 = [(SKUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];

  [v6 beginActiveImpressionForViewElement:v8];
  v9 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v4 item]);

  [v6 beginActiveImpressionForViewElement:v9];
  v10.receiver = self;
  v10.super_class = SKUIKeyValueInfoListPageSection;
  [(SKUIStorePageSection *)&v10 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 activeMetricsImpressionSession];

  v7 = [(SKUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];

  [v6 endActiveImpressionForViewElement:v8];
  v9 = [v4 item];
  if (v9 < [(NSArray *)self->_viewElements count])
  {
    v10 = [(NSArray *)self->_viewElements objectAtIndex:v9];

    [v6 endActiveImpressionForViewElement:v10];
    v8 = v10;
  }

  v11.receiver = self;
  v11.super_class = SKUIKeyValueInfoListPageSection;
  [(SKUIStorePageSection *)&v11 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SKUIKeyValueInfoListPageSection *)self _requestCellLayout];
  v8.receiver = self;
  v8.super_class = SKUIKeyValueInfoListPageSection;
  [(SKUIStorePageSection *)&v8 entityProvider:v7 didInvalidateWithContext:v6];
}

- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4
{
  v14 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 cellForItemAtIndexPath:v14];

  if (v7)
  {
    [v5 activePageWidth];
    v9 = v8;
    v10 = [(SKUIStorePageSection *)self context];
    [v10 horizontalPadding];
    v12 = v9 + v11 * -2.0;

    v13 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v14 item]);
    [v7 reloadWithViewElement:v13 width:self->_cellLayoutContext context:v12];
  }
}

- (UIEdgeInsets)sectionContentInset
{
  v16.receiver = self;
  v16.super_class = SKUIKeyValueInfoListPageSection;
  [(SKUIStorePageSection *)&v16 sectionContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SKUIStorePageSection *)self isTopSection];
  v12 = 12.0;
  if (!v11)
  {
    v12 = v4;
  }

  v13 = fmax(v8 + -3.0, 0.0);
  v14 = v6;
  v15 = v10;
  result.right = v15;
  result.bottom = v13;
  result.left = v14;
  result.top = v12;
  return result;
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280DC28];
  v6 = self->_cellLayoutContext;
  v7 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setContainerViewElementType:[(SKUIInfoListViewElement *)self->_infoList elementType]];
  [(SKUIKeyValueInfoListPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SKUIKeyValueInfoListPageSection;
  [(SKUIStorePageSection *)&v9 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  cellLayoutContext = self->_cellLayoutContext;
  v8 = a4;
  [(SKUIViewElementLayoutContext *)cellLayoutContext setActivePageWidth:width];
  [(SKUIKeyValueInfoListPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SKUIKeyValueInfoListPageSection;
  [(SKUIStorePageSection *)&v9 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIStorePageSection *)self context];
  v9 = [v8 collectionView];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SKUIKeyValueInfoListPageSection_artworkRequest_didLoadImage___block_invoke;
  v13[3] = &unk_278200218;
  v14 = v9;
  v15 = v7;
  v16 = v6;
  v17 = self;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  [(SKUIKeyValueInfoListPageSection *)self _enumerateVisibleViewElementsUsingBlock:v13];
}

void __63__SKUIKeyValueInfoListPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellForItemAtIndexPath:a2];
  [v3 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 56) + 88)];
}

- (void)_enumerateVisibleViewElementsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 indexPathsForVisibleItems];
  v8 = [(SKUIStorePageSection *)self sectionIndex];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SKUIKeyValueInfoListPageSection__enumerateVisibleViewElementsUsingBlock___block_invoke;
  v10[3] = &unk_2781FF9D8;
  v11 = v4;
  v12 = v8;
  v10[4] = self;
  v9 = v4;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __75__SKUIKeyValueInfoListPageSection__enumerateVisibleViewElementsUsingBlock___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if ([v8 section] == a1[6])
  {
    v6 = a1[5];
    v7 = [*(a1[4] + 112) objectAtIndex:{objc_msgSend(v8, "item")}];
    (*(v6 + 16))(v6, v8, v7, a4);
  }
}

- (void)_reloadViewElementProperties
{
  v3 = [(SKUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  infoList = self->_infoList;
  self->_infoList = v4;

  v6 = [(SKUIViewElement *)self->_infoList flattenedChildren];
  viewElements = self->_viewElements;
  self->_viewElements = v6;

  MEMORY[0x2821F96F8](v6, viewElements);
}

- (void)_requestCellLayout
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIStorePageSection *)self context];
  [v3 activePageWidth];
  v5 = v4;
  v6 = [(SKUIStorePageSection *)self context];
  [v6 horizontalPadding];
  v8 = v5 + v7 * -2.0;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_viewElements;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [SKUIKeyValueInfoListCollectionViewCell titleColumnWidthWithViewElement:*(*(&v27 + 1) + 8 * i) width:self->_cellLayoutContext context:v8];
        if (v13 < v15)
        {
          v13 = v15;
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  cellLayoutContext = self->_cellLayoutContext;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [(SKUIViewElementLayoutContext *)cellLayoutContext setAggregateValue:v17 forKey:0x28280DC48];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = self->_viewElements;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [SKUIKeyValueInfoListCollectionViewCell requestLayoutForViewElement:*(*(&v23 + 1) + 8 * j) width:self->_cellLayoutContext context:v8, v23];
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v20);
  }
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIKeyValueInfoListPageSection initWithPageComponent:]";
}

@end