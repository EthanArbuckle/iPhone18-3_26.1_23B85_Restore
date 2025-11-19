@interface SKUIBrickSwooshPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIBrickSwooshPageSection)initWithPageComponent:(id)a3;
- (id)_artworkLoader;
- (id)_missingItemLoader;
- (id)_swooshViewController;
- (id)cellForIndexPath:(id)a3;
- (id)swoosh:(id)a3 imageForCellAtIndex:(int64_t)a4;
- (void)_addImpressionForIndex:(int64_t)a3 toSession:(id)a4;
- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)dealloc;
- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)swoosh:(id)a3 didSelectCellAtIndex:(int64_t)a4;
- (void)swoosh:(id)a3 willDisplayCellAtIndex:(int64_t)a4;
- (void)willAppearInContext:(id)a3;
@end

@implementation SKUIBrickSwooshPageSection

- (SKUIBrickSwooshPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrickSwooshPageSection initWithPageComponent:];
  }

  v7.receiver = self;
  v7.super_class = SKUIBrickSwooshPageSection;
  v5 = [(SKUIStorePageSection *)&v7 initWithPageComponent:v4];

  return v5;
}

- (void)dealloc
{
  [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SKUIBrickSwooshViewController *)self->_swooshViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIBrickSwooshPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIStorePageSection *)self pageComponent];
  v9 = [v8 viewElement];
  [v7 addItemViewElement:v9];

  [(SKUIBrickSwooshViewController *)self->_swooshViewController indexPathsForVisibleItems];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        -[SKUIBrickSwooshPageSection _addImpressionForIndex:toSession:](self, "_addImpressionForIndex:toSession:", [v15 item], v7);
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)willAppearInContext:(id)a3
{
  v3 = [a3 collectionView];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUIBrickSwooshPageSectionReuseIdentifier"];
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SKUIBrickSwooshPageSectionReuseIdentifier" forIndexPath:v4];
  v8 = [(SKUIBrickSwooshPageSection *)self _swooshViewController];
  v9 = [v8 view];

  v10 = [v7 contentChildView];

  if (v9 != v10)
  {
    v11 = [(SKUIStorePageSection *)self backgroundColorForIndexPath:v4];
    [v9 setBackgroundColor:v11];

    [v7 setContentChildView:v9];
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SKUIStorePageSection *)self context];
  v5 = [v4 collectionView];

  v6 = [(SKUIBrickSwooshPageSection *)self _swooshViewController];
  v7 = [v6 view];

  [v7 frame];
  v9 = v8;
  [v5 bounds];
  v11 = v10;

  v12 = v11;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v5 = [(SKUIBrickSwooshPageSection *)self _artworkLoader];
  [v5 loadImagesForNextPageWithReason:a3];

  [(SKUIBrickSwooshPageSection *)self _loadMissingItemsFromIndex:0 withReason:a3];
}

- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5
{
  v10 = a4;
  if ([v10 count])
  {
    v6 = [(SKUIStorePageSection *)self pageComponent];
    [v6 _updateBricksWithItems:v10];
    v7 = [(SKUIBrickSwooshPageSection *)self _swooshViewController];
    v8 = [v6 bricks];
    [v7 setBricks:v8];

    v9 = [(SKUIBrickSwooshPageSection *)self _artworkLoader];
    [v9 loadImagesForNextPageWithReason:0];
  }
}

- (void)swoosh:(id)a3 didSelectCellAtIndex:(int64_t)a4
{
  v20 = a3;
  v6 = [v20 bricks];
  v7 = [v6 objectAtIndex:a4];

  v8 = [v7 link];
  v9 = [(SKUIStorePageSection *)self clickEventWithLink:v8 elementName:*MEMORY[0x277D6A4C8] index:a4];
  if (v9)
  {
    [v20 frameForItemAtIndex:a4];
    SKUIMetricsSetClickEventPositionWithPoint(v9, v10, v11);
    v12 = [(SKUIStorePageSection *)self context];
    v13 = [v12 metricsController];
    [v13 recordEvent:v9];
  }

  v14 = [(SKUIStorePageSection *)self context];
  v15 = [v14 parentViewController];

  v16 = [v15 navigationController];
  v17 = [v16 topViewController];

  [(SKUIStorePageSection *)self showPageWithLink:v8];
  v18 = [v15 navigationController];
  v19 = [v18 topViewController];

  if (v19 == v17)
  {
    [v20 deselectAllItems];
  }
}

- (id)swoosh:(id)a3 imageForCellAtIndex:(int64_t)a4
{
  v6 = [a3 bricks];
  v7 = [v6 objectAtIndex:a4];

  v8 = [(SKUIBrickSwooshArtworkLoader *)self->_artworkLoader cachedImageForBrick:v7];
  if (!v8)
  {
    v9 = [(SKUIBrickSwooshPageSection *)self _artworkLoader];
    [v9 loadImageForBrick:v7 reason:1];
    v8 = [v9 placeholderImage];
  }

  return v8;
}

- (void)swoosh:(id)a3 willDisplayCellAtIndex:(int64_t)a4
{
  v6 = [(SKUIStorePageSection *)self context];
  v7 = [v6 metricsController];
  v8 = [v7 activeImpressionsSession];

  if (v8)
  {
    [(SKUIBrickSwooshPageSection *)self _addImpressionForIndex:a4 toSession:v8];
  }

  [(SKUIBrickSwooshPageSection *)self _loadMissingItemsFromIndex:a4 withReason:1];
}

- (void)_addImpressionForIndex:(int64_t)a3 toSession:(id)a4
{
  swooshViewController = self->_swooshViewController;
  v6 = a4;
  v7 = [(SKUIBrickSwooshViewController *)swooshViewController bricks];
  v8 = [v7 objectAtIndex:a3];

  [v6 addItemIdentifier:{objc_msgSend(v8, "brickIdentifier")}];
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    v4 = [(SKUIStorePageSection *)self context];
    v5 = [SKUIBrickSwooshArtworkLoader alloc];
    v6 = [v4 resourceLoader];
    v7 = [(SKUIBrickSwooshPageSection *)self _swooshViewController];
    v8 = [(SKUIBrickSwooshArtworkLoader *)v5 initWithArtworkLoader:v6 swoosh:v7];
    v9 = self->_artworkLoader;
    self->_artworkLoader = v8;

    v10 = self->_artworkLoader;
    v11 = [v4 colorScheme];
    [(SKUISwooshArtworkLoader *)v10 setPlaceholderColorWithColorScheme:v11];

    artworkLoader = self->_artworkLoader;
  }

  return artworkLoader;
}

- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4
{
  v8 = [(SKUIStorePageSection *)self pageComponent];
  if ([v8 isMissingItemData])
  {
    v7 = [(SKUIBrickSwooshPageSection *)self _missingItemLoader];
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

- (id)_swooshViewController
{
  swooshViewController = self->_swooshViewController;
  if (!swooshViewController)
  {
    v4 = [(SKUIStorePageSection *)self context];
    v5 = [v4 parentViewController];

    v6 = [SKUIBrickSwooshViewController alloc];
    v7 = [(SKUIStorePageSection *)self pageComponent];
    v8 = [(SKUIBrickSwooshViewController *)v6 initWithSwoosh:v7];
    v9 = self->_swooshViewController;
    self->_swooshViewController = v8;

    v10 = self->_swooshViewController;
    v11 = [v5 clientContext];
    [(SKUIBrickSwooshViewController *)v10 setClientContext:v11];

    v12 = self->_swooshViewController;
    v13 = [(SKUIStorePageSection *)self context];
    v14 = [v13 colorScheme];
    [(SKUIBrickSwooshViewController *)v12 setColorScheme:v14];

    [(SKUIBrickSwooshViewController *)self->_swooshViewController setDelegate:self];
    [v5 addChildViewController:self->_swooshViewController];

    swooshViewController = self->_swooshViewController;
  }

  return swooshViewController;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrickSwooshPageSection initWithPageComponent:]";
}

@end