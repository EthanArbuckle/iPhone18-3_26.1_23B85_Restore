@interface SKUIVerticalInfoListPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIVerticalInfoListPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)_contentInsetForIndexPath:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (id)_reloadColumnDataIfNecessary;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (int64_t)_numberOfColumnsForWidth:(double)a3;
- (int64_t)numberOfCells;
- (void)_enumerateVisibleIndexPathsUsingBlock:(id)a3;
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

@implementation SKUIVerticalInfoListPageSection

- (SKUIVerticalInfoListPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIVerticalInfoListPageSection initWithPageComponent:];
  }

  v11.receiver = self;
  v11.super_class = SKUIVerticalInfoListPageSection;
  v5 = [(SKUIStorePageSection *)&v11 initWithPageComponent:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    columns = v5->_columns;
    v5->_columns = v6;

    v8 = [v4 viewElement];
    infoList = v5->_infoList;
    v5->_infoList = v8;
  }

  return v5;
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v5 = a4;
  v7 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v7 viewElement];
  [v5 addItemViewElement:v6];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIInfoListViewElement *)self->_infoList style];
  v6 = [v5 ikBackgroundColor];
  v7 = [v6 color];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SKUIVerticalInfoListPageSection;
    v8 = [(SKUIStorePageSection *)&v11 backgroundColorForIndexPath:v4];
  }

  v9 = v8;

  return v9;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 dequeueReusableCellWithReuseIdentifier:0x282814AA8 forIndexPath:v4];
  [(SKUIVerticalInfoListPageSection *)self _contentInsetForIndexPath:v4];
  [v7 setContentInset:?];
  v8 = [(SKUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
  v9 = [v4 item];

  v10 = [v8 objectAtIndex:v9];
  [v7 reloadWithViewElements:v10 width:self->_cellLayoutContext context:self->_columnWidth];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
  columnWidth = self->_columnWidth;
  columnHeight = self->_columnHeight;
  [(SKUIVerticalInfoListPageSection *)self _contentInsetForIndexPath:v4];
  v9 = v8;
  v11 = v10;

  v12 = columnWidth + v9 + v11;
  v13 = columnHeight;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SKUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 beginActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SKUIVerticalInfoListPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SKUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 endActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SKUIVerticalInfoListPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SKUIVerticalInfoListPageSection *)self _requestCellLayout];
  v8.receiver = self;
  v8.super_class = SKUIVerticalInfoListPageSection;
  [(SKUIStorePageSection *)&v8 entityProvider:v7 didInvalidateWithContext:v6];
}

- (int64_t)numberOfCells
{
  v2 = [(SKUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
  v3 = [v2 count];

  return v3;
}

- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4
{
  v10 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 cellForItemAtIndexPath:v10];

  if (v7)
  {
    v8 = [(SKUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
    v9 = [v8 objectAtIndex:{objc_msgSend(v10, "item")}];
    [v7 reloadWithViewElements:v9 width:self->_cellLayoutContext context:self->_columnWidth];
  }
}

- (UIEdgeInsets)sectionContentInset
{
  v16.receiver = self;
  v16.super_class = SKUIVerticalInfoListPageSection;
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

  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282814AA8];
  v6 = self->_cellLayoutContext;
  v7 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setContainerViewElementType:[(SKUIInfoListViewElement *)self->_infoList elementType]];
  [(SKUIVerticalInfoListPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SKUIVerticalInfoListPageSection;
  [(SKUIStorePageSection *)&v9 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  cellLayoutContext = self->_cellLayoutContext;
  v8 = a4;
  [(SKUIViewElementLayoutContext *)cellLayoutContext setActivePageWidth:width];
  [(SKUIVerticalInfoListPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SKUIVerticalInfoListPageSection;
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
  v13[2] = __63__SKUIVerticalInfoListPageSection_artworkRequest_didLoadImage___block_invoke;
  v13[3] = &unk_2781FF520;
  v14 = v9;
  v15 = v7;
  v16 = v6;
  v17 = self;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  [(SKUIVerticalInfoListPageSection *)self _enumerateVisibleIndexPathsUsingBlock:v13];
}

void __63__SKUIVerticalInfoListPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellForItemAtIndexPath:a2];
  [v3 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 56) + 88)];
}

- (UIEdgeInsets)_contentInsetForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
  v6 = [v4 item];

  v7 = [v5 count];
  v8 = 11.0;
  if (v6 == v7 - 1)
  {
    v9 = 15.0;
  }

  else
  {
    v9 = 11.0;
  }

  if (v6)
  {
    v10 = 11.0;
  }

  else
  {
    v10 = 15.0;
  }

  if (v6)
  {
    v8 = v9;
  }

  if (v7 == 1)
  {
    v11 = 15.0;
  }

  else
  {
    v11 = v10;
  }

  if (v7 == 1)
  {
    v12 = 15.0;
  }

  else
  {
    v12 = v8;
  }

  v13 = 0.0;
  v14 = 0.0;
  v15 = v11;
  v16 = v12;
  result.right = v16;
  result.bottom = v14;
  result.left = v15;
  result.top = v13;
  return result;
}

- (void)_enumerateVisibleIndexPathsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 indexPathsForVisibleItems];
  v8 = [(SKUIStorePageSection *)self sectionIndex];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SKUIVerticalInfoListPageSection__enumerateVisibleIndexPathsUsingBlock___block_invoke;
  v10[3] = &unk_2781FF548;
  v11 = v4;
  v12 = v8;
  v9 = v4;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __73__SKUIVerticalInfoListPageSection__enumerateVisibleIndexPathsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 section] == *(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (int64_t)_numberOfColumnsForWidth:(double)a3
{
  v3 = fmax(a3 / 160.0, 1.0);
  if (v3 > 3.0)
  {
    v3 = 3.0;
  }

  v4 = v3;
  v5 = [(SKUIViewElement *)self->_infoList flattenedChildren];
  v6 = [v5 count];

  if (v6 >= v4)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

- (id)_reloadColumnDataIfNecessary
{
  if (![(NSMutableArray *)self->_columns count]&& self->_numberOfColumns >= 1)
  {
    v26 = [(SKUIViewElement *)self->_infoList flattenedChildren];
    v25 = [v26 count];
    v3 = malloc_type_malloc(8 * self->_numberOfColumns, 0x100004000313F17uLL);
    bzero(v3, 8 * self->_numberOfColumns);
    numberOfColumns = self->_numberOfColumns;
    if (numberOfColumns >= 1)
    {
      for (i = 0; i < numberOfColumns; ++i)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [(NSMutableArray *)self->_columns addObject:v6];

        numberOfColumns = self->_numberOfColumns;
      }
    }

    v7 = v25 - 1;
    if (v25 >= 1)
    {
      v8 = 0;
      while (1)
      {
        v9 = self->_numberOfColumns;
        if (v9 >= 2)
        {
          break;
        }

LABEL_18:
        if (v7 >= v8)
        {
          v16 = [v26 objectAtIndex:v8];
          v17 = [(NSMutableArray *)self->_columns objectAtIndex:0];
          [v17 addObject:v16];

          [SKUIVerticalInfoListCollectionViewCell sizeThatFitsWidth:v16 viewElement:self->_cellLayoutContext context:self->_columnWidth];
          *v3 = *v3 + v18;
        }

        v15 = v8++ < v7;
        if (!v15)
        {
          numberOfColumns = self->_numberOfColumns;
          goto LABEL_22;
        }
      }

      v10 = v7;
      while (1)
      {
        v11 = v9--;
        if (v10 < v8)
        {
          goto LABEL_16;
        }

        v7 = v10;
        if (v25 >= v11)
        {
          break;
        }

LABEL_17:
        v10 = v7;
        if (v11 <= 2)
        {
          goto LABEL_18;
        }
      }

      while (v3[v9] < v3[v11 - 2])
      {
        v12 = [v26 objectAtIndex:v10];
        v13 = [(NSMutableArray *)self->_columns objectAtIndex:v9];
        [v13 insertObject:v12 atIndex:0];

        [SKUIVerticalInfoListCollectionViewCell sizeThatFitsWidth:v12 viewElement:self->_cellLayoutContext context:self->_columnWidth];
        v3[v9] = v3[v9] + v14;
        v7 = v10 - 1;

        v15 = v10-- <= v8;
        if (v15)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      v7 = v10;
      goto LABEL_17;
    }

LABEL_22:
    if (numberOfColumns >= 1)
    {
      v19 = 0;
      do
      {
        v20 = [(NSMutableArray *)self->_columns objectAtIndex:v19];
        v21 = [v20 count];

        if (v21 <= 1)
        {
          columnHeight = v3[v19];
        }

        else
        {
          columnHeight = v3[v19] + ((v21 - 1) * 13.0);
          v3[v19] = columnHeight;
        }

        if (self->_columnHeight >= columnHeight)
        {
          columnHeight = self->_columnHeight;
        }

        self->_columnHeight = columnHeight;
        ++v19;
      }

      while (v19 < self->_numberOfColumns);
    }

    free(v3);
  }

  columns = self->_columns;

  return columns;
}

- (void)_requestCellLayout
{
  v3 = [(SKUIStorePageSection *)self context];
  [v3 activePageWidth];
  v5 = v4;

  self->_columnWidth = v5 + -30.0;
  v6 = [(SKUIVerticalInfoListPageSection *)self _numberOfColumnsForWidth:v5];
  self->_numberOfColumns = v6;
  if (v6 >= 2)
  {
    v7 = (self->_columnWidth + ((v6 - 1) * -22.0)) / v6;
    self->_columnWidth = floorf(v7);
  }

  infoList = self->_infoList;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SKUIVerticalInfoListPageSection__requestCellLayout__block_invoke;
  v9[3] = &unk_2781F9640;
  v9[4] = self;
  [(SKUIInfoListViewElement *)infoList enumerateChildrenUsingBlock:v9];
  self->_columnHeight = -1.0;
  [(NSMutableArray *)self->_columns removeAllObjects];
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIVerticalInfoListPageSection initWithPageComponent:]";
}

@end