@interface SKUIBrickGridPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIBrickGridPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)_contentInsetsForColumnIndex:(int64_t)a3 rowWidth:(double)a4;
- (id)_editorialLayoutForBrick:(id)a3;
- (id)_missingItemLoader;
- (id)cellForIndexPath:(id)a3;
- (id)clickEventWithLink:(id)a3 elementName:(id)a4 index:(int64_t)a5;
- (int64_t)numberOfCells;
- (void)_enumerateVisibleBricksUsingBlock:(id)a3;
- (void)_loadArtworkForBrick:(id)a3 artworkLoader:(id)a4 reason:(int64_t)a5;
- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)dealloc;
- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUIBrickGridPageSection

- (SKUIBrickGridPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrickGridPageSection initWithPageComponent:];
  }

  v17.receiver = self;
  v17.super_class = SKUIBrickGridPageSection;
  v5 = [(SKUIStorePageSection *)&v17 initWithPageComponent:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = 145.0;
    if (v7 == 1)
    {
      v8 = 208.0;
    }

    v9 = 2;
    if (v7 == 1)
    {
      v9 = 3;
    }

    v10 = 10.0;
    v11 = 20.0;
    if (v7 == 1)
    {
      v10 = 20.0;
    }

    else
    {
      v11 = 15.0;
    }

    *&v5->_baseHeight = qword_215F405C0[v7 == 1];
    v5->_columnWidth = v8;
    v5->_numberOfColumns = v9;
    v5->_paddingHorizontal = v10;
    v5->_paddingTop = v11;
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    artworkRequests = v5->_artworkRequests;
    v5->_artworkRequests = v12;

    v14 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    editorialLayouts = v5->_editorialLayouts;
    v5->_editorialLayouts = v14;
  }

  return v5;
}

- (void)dealloc
{
  [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIBrickGridPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = [(SKUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];
  [v13 addItemViewElement:v8];

  v9 = [v6 item];
  v10 = [(SKUIStorePageSection *)self pageComponent];
  v11 = [v10 children];

  if (v9 < [v11 count])
  {
    v12 = [v11 objectAtIndex:v9];
    [v13 addItemIdentifier:{objc_msgSend(v12, "brickIdentifier")}];
  }
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:0x282812E28 forIndexPath:v4];
  v8 = [(SKUIStorePageSection *)self backgroundColorForIndexPath:v4];
  [v7 setBackgroundColor:v8];

  v9 = [v4 row];
  v10 = v9 % self->_numberOfColumns;
  [v6 bounds];
  [(SKUIBrickGridPageSection *)self _contentInsetsForColumnIndex:v10 rowWidth:v11];
  [v7 setContentInsets:?];
  v12 = [(SKUIStorePageSection *)self pageComponent];
  v13 = [v12 children];

  if (v9 < [v13 count])
  {
    v14 = [v13 objectAtIndex:v9];
    v15 = [v14 accessibilityLabel];
    [v7 setAccessibilityLabel:v15];

    v16 = [(SKUIBrickGridPageSection *)self _editorialLayoutForBrick:v14];
    [v7 applyEditorialLayout:v16 orientation:0];
    v17 = [v5 resourceLoader];
    v18 = [(NSMapTable *)self->_artworkRequests objectForKey:v14];
    v19 = [v18 unsignedIntegerValue];

    if (!v19)
    {
      goto LABEL_5;
    }

    v20 = [v17 cachedResourceForRequestIdentifier:v19];
    if (v20)
    {
LABEL_9:
      [v7 setBrickImage:v20];
      v26 = [v5 colorScheme];
      [v7 setColoringWithColorScheme:v26];

      goto LABEL_11;
    }

    if (([v17 trySetReason:1 forRequestWithIdentifier:v19] & 1) == 0)
    {
LABEL_5:
      [(SKUIBrickGridPageSection *)self _loadArtworkForBrick:v14 artworkLoader:v17 reason:1];
    }

    placeholderImage = self->_placeholderImage;
    if (!placeholderImage)
    {
      +[SKUIStyledImageDataConsumer brickConsumer];
      v22 = v28 = v16;
      v23 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
      v24 = [v22 imageForColor:v23];
      v25 = self->_placeholderImage;
      self->_placeholderImage = v24;

      v16 = v28;
      placeholderImage = self->_placeholderImage;
    }

    v20 = placeholderImage;
    goto LABEL_9;
  }

  [v7 applyEditorialLayout:0 orientation:0];
  [v7 setBrickImage:0];
LABEL_11:

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  v5 = [a3 item];
  numberOfColumns = self->_numberOfColumns;
  v7 = [(SKUIStorePageSection *)self context];
  v8 = [v7 collectionView];

  v9 = v5 % self->_numberOfColumns;
  [v8 bounds];
  [(SKUIBrickGridPageSection *)self _contentInsetsForColumnIndex:v9 rowWidth:v10];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  columnWidth = self->_columnWidth;
  v20 = [(SKUIStorePageSection *)self pageComponent];
  v21 = [v20 children];

  v22 = [v21 count];
  v23 = self->_numberOfColumns;
  if (v23 >= 1)
  {
    v24 = v22;
    v25 = v23 * (v5 / numberOfColumns);
    if (v25 < v22)
    {
      v26 = v23 * (v5 / numberOfColumns);
      do
      {
        baseHeight = self->_baseHeight;
        v28 = [v21 objectAtIndex:v26];
        v29 = [(SKUIBrickGridPageSection *)self _editorialLayoutForBrick:v28];

        if (v29)
        {
          [v29 layoutHeightForOrientation:0 expanded:1];
          baseHeight = v30 + self->_baseHeight + 27.0;
        }

        if (v4 < baseHeight)
        {
          v4 = baseHeight;
        }
      }

      while (++v26 < self->_numberOfColumns + v25 && v26 < v24);
    }
  }

  v32 = v14 + v18 + columnWidth;
  v33 = v12 + v16 + v4;
  result.height = v33;
  result.width = v32;
  return result;
}

- (id)clickEventWithLink:(id)a3 elementName:(id)a4 index:(int64_t)a5
{
  v13.receiver = self;
  v13.super_class = SKUIBrickGridPageSection;
  v7 = [(SKUIStorePageSection *)&v13 clickEventWithLink:a3 elementName:a4 index:?];
  if (v7)
  {
    v8 = [(SKUIStorePageSection *)self context];
    v9 = [v8 collectionView];

    v10 = [MEMORY[0x277CCAA70] indexPathForItem:a5 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v11 = [v9 cellForItemAtIndexPath:v10];

    SKUIMetricsSetClickEventPositionWithView(v7, v11);
  }

  return v7;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v14 = [v5 children];

  v6 = [v4 item];
  v7 = v6 >= [v14 count];
  v8 = v14;
  if (!v7)
  {
    v9 = [v14 objectAtIndex:v6];
    v10 = [v9 link];
    v11 = [(SKUIBrickGridPageSection *)self clickEventWithLink:v10 elementName:*MEMORY[0x277D6A4C8] index:v6];
    if (v11)
    {
      v12 = [(SKUIStorePageSection *)self context];
      v13 = [v12 metricsController];
      [v13 recordEvent:v11];
    }

    [(SKUIStorePageSection *)self showPageWithLink:v10];

    v8 = v14;
  }
}

- (int64_t)numberOfCells
{
  v3 = [(SKUIStorePageSection *)self pageComponent];
  v4 = [v3 children];
  v5 = [v4 count];

  v6 = v5 % self->_numberOfColumns;
  return v6 + v5;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 resourceLoader];

  v7 = [(SKUIStorePageSection *)self pageComponent];
  v8 = [v7 children];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SKUIBrickGridPageSection_prefetchResourcesWithReason___block_invoke;
  v10[3] = &unk_278200378;
  v10[4] = self;
  v9 = v6;
  v11 = v9;
  v12 = v14;
  v13 = a3;
  [v8 enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
}

void __56__SKUIBrickGridPageSection_prefetchResourcesWithReason___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = a2;
  v6 = [*(*(a1 + 32) + 88) objectForKey:?];
  if (!v6)
  {
    [*(a1 + 32) _loadArtworkForBrick:v7 artworkLoader:*(a1 + 40) reason:*(a1 + 56)];
    *a4 = ++*(*(*(a1 + 48) + 8) + 24) > 8;
  }
}

- (void)willAppearInContext:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282812E28];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    [v6 bounds];
    v9 = 3;
    if (v10 > v11)
    {
      v9 = 4;
    }

    self->_numberOfColumns = v9;
  }

  v12 = [(SKUIStorePageSection *)self pageComponent];
  v13 = [v12 children];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [(SKUIBrickGridPageSection *)self _editorialLayoutForBrick:*(*(&v21 + 1) + 8 * i)];
        [v19 enqueueLayoutRequests];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  v20.receiver = self;
  v20.super_class = SKUIBrickGridPageSection;
  [(SKUIStorePageSection *)&v20 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v34 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(SKUIStorePageSection *)self context];
  [v8 portraitPageWidth];
  v10 = v9;
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v25 = v8;
  v27 = v7;
  if (v12 == 1)
  {
    if (width <= height)
    {
      v14 = 3;
    }

    else
    {
      [v8 landscapePageWidth];
      v10 = v13;
      v14 = 4;
    }

    self->_numberOfColumns = v14;
  }

  v15 = [(SKUIStorePageSection *)self context];
  v16 = [v15 collectionView];

  v17 = [(SKUIStorePageSection *)self sectionIndex];
  v18 = [v16 indexPathsForVisibleItems];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        if ([v23 section] == v17)
        {
          v24 = [v16 cellForItemAtIndexPath:v23];
          -[SKUIBrickGridPageSection _contentInsetsForColumnIndex:rowWidth:](self, "_contentInsetsForColumnIndex:rowWidth:", [v23 item] % self->_numberOfColumns, v10);
          [v24 setContentInsets:?];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v20);
  }

  v28.receiver = self;
  v28.super_class = SKUIBrickGridPageSection;
  [(SKUIStorePageSection *)&v28 willTransitionToSize:v27 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a4;
  v7 = [a3 requestIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SKUIBrickGridPageSection_artworkRequest_didLoadImage___block_invoke;
  v9[3] = &unk_2782003A0;
  v10 = v6;
  v11 = v7;
  v9[4] = self;
  v8 = v6;
  [(SKUIBrickGridPageSection *)self _enumerateVisibleBricksUsingBlock:v9];
}

void __56__SKUIBrickGridPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = [*(*(a1 + 32) + 88) objectForKey:a2];
  if ([v11 unsignedIntegerValue] == *(a1 + 48))
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:{objc_msgSend(*(a1 + 32), "sectionIndex")}];
    v8 = [*(a1 + 32) context];
    v9 = [v8 collectionView];
    v10 = [v9 cellForItemAtIndexPath:v7];

    [v10 setBrickImage:*(a1 + 40)];
    *a4 = 1;
  }
}

- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 count])
  {
    v9 = [(SKUIStorePageSection *)self pageComponent];
    v10 = [v9 _updateWithMissingItems:v7];
  }

  if ([v8 count])
  {
    v11 = [(SKUIStorePageSection *)self pageComponent];
    v12 = [v11 _updateWithInvalidItemIdentifiers:v8];
    if ([v12 count])
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = [(SKUIStorePageSection *)self sectionIndex];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __82__SKUIBrickGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
      v21 = &unk_2782003C8;
      v22 = v13;
      v23 = v14;
      v15 = v13;
      [v12 enumerateIndexesUsingBlock:&v18];
      v16 = [(SKUIStorePageSection *)self context:v18];
      v17 = [v16 collectionView];

      [v17 deleteItemsAtIndexPaths:v15];
    }
  }
}

void __82__SKUIBrickGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

- (UIEdgeInsets)_contentInsetsForColumnIndex:(int64_t)a3 rowWidth:(double)a4
{
  numberOfColumns = self->_numberOfColumns;
  v5 = numberOfColumns - 1;
  if (numberOfColumns == 1)
  {
    v6 = (a4 - self->_columnWidth) * 0.5;
    paddingHorizontal = floorf(v6);
    p_paddingTop = &self->_paddingTop;
    v9 = paddingHorizontal;
  }

  else
  {
    paddingHorizontal = self->_paddingHorizontal;
    v10 = (a4 + paddingHorizontal * -2.0 - self->_columnWidth * numberOfColumns) / v5;
    v11 = floorf(v10);
    if (a3)
    {
      p_paddingTop = &self->_paddingTop;
      v12 = floorf(v11 * 0.5);
      if (v5 == a3)
      {
        v9 = self->_paddingHorizontal;
      }

      else
      {
        v9 = v12;
      }

      paddingHorizontal = v12;
    }

    else
    {
      p_paddingTop = &self->_paddingTop;
      v9 = floorf(v11 * 0.5);
    }
  }

  v13 = *p_paddingTop;
  v14 = 0.0;
  result.right = v9;
  result.bottom = v14;
  result.left = paddingHorizontal;
  result.top = v13;
  return result;
}

- (id)_editorialLayoutForBrick:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_editorialLayouts objectForKey:v4];
  if (!v5)
  {
    v6 = [v4 editorial];
    if (v6)
    {
      v7 = [SKUIEditorialLayout alloc];
      v8 = [(SKUIStorePageSection *)self context];
      v9 = [v8 textLayoutCache];
      v5 = [(SKUIEditorialLayout *)v7 initWithEditorial:v6 layoutCache:v9];

      [(SKUIEditorialLayout *)v5 setLayoutWidth:0 forOrientation:self->_columnWidth];
      [(NSMapTable *)self->_editorialLayouts setObject:v5 forKey:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_enumerateVisibleBricksUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 children];

  v7 = [(SKUIStorePageSection *)self context];
  v8 = [v7 collectionView];

  v9 = [(SKUIStorePageSection *)self sectionIndex];
  v10 = [v8 indexPathsForVisibleItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SKUIBrickGridPageSection__enumerateVisibleBricksUsingBlock___block_invoke;
  v13[3] = &unk_2781FFD40;
  v15 = v4;
  v16 = v9;
  v14 = v6;
  v11 = v4;
  v12 = v6;
  [v10 enumerateObjectsUsingBlock:v13];
}

void __62__SKUIBrickGridPageSection__enumerateVisibleBricksUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 section] == *(a1 + 48))
  {
    v3 = [v5 item];
    if (v3 < [*(a1 + 32) count])
    {
      v4 = [*(a1 + 32) objectAtIndex:v3];
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_loadArtworkForBrick:(id)a3 artworkLoader:(id)a4 reason:(int64_t)a5
{
  v15 = a3;
  v8 = a4;
  v9 = [v15 artwork];
  v10 = [v9 URL];

  if (v10)
  {
    v11 = objc_alloc_init(SKUIArtworkRequest);
    v12 = [SKUIStyledImageDataConsumer brickConsumerWithBrickSize:self->_columnWidth, self->_baseHeight];
    [(SKUIArtworkRequest *)v11 setDataConsumer:v12];

    [(SKUIArtworkRequest *)v11 setDelegate:self];
    [(SKUIArtworkRequest *)v11 setURL:v10];
    artworkRequests = self->_artworkRequests;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v11, "requestIdentifier")}];
    [(NSMapTable *)artworkRequests setObject:v14 forKey:v15];

    [v8 loadResourceWithRequest:v11 reason:a5];
  }
}

- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4
{
  v8 = [(SKUIStorePageSection *)self pageComponent];
  if ([v8 isMissingItemData])
  {
    v7 = [(SKUIBrickGridPageSection *)self _missingItemLoader];
    [v7 loadItemsForPageComponent:v8 startIndex:a3 reason:a4];
  }
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SKUIMissingItemLoader alloc];
    v5 = [(SKUIStorePageSection *)self context];
    v6 = [v5 resourceLoader];
    v7 = [(SKUIMissingItemLoader *)v4 initWithResourceLoader:v6];
    v8 = self->_missingItemLoader;
    self->_missingItemLoader = v7;

    [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrickGridPageSection initWithPageComponent:]";
}

@end