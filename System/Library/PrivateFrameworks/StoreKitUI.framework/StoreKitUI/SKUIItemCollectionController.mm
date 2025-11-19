@interface SKUIItemCollectionController
- (BOOL)_loadArtworkForItem:(id)a3 reason:(int64_t)a4;
- (SKUIItemCollectionController)initWithClientContext:(id)a3;
- (SKUIItemCollectionDelegate)delegate;
- (_NSRange)_visibleItemRange;
- (id)_artworkLoader;
- (id)_iconArtworkRequestWithItem:(id)a3;
- (id)_initSKUIItemCollectionController;
- (id)_placeholderImageForItem:(id)a3;
- (id)_placeholderImageForScreenshot:(id)a3;
- (id)_screenshotArtworkRequestWithItem:(id)a3;
- (id)_screenshotForItem:(id)a3;
- (id)performActionForItemAtIndex:(int64_t)a3;
- (void)_enumerateVisibleCellLayoutsWithBlock:(id)a3;
- (void)_initSKUIItemCollectionController;
- (void)_memoryWarningNotification:(id)a3;
- (void)_reloadForItemStateChange:(id)a3;
- (void)_reloadForRestrictionsChange;
- (void)_reloadScreenshotForCellLayout:(id)a3 item:(id)a4 isRestricted:(BOOL)a5;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)cancelArtworkLoadForItemIndex:(int64_t)a3;
- (void)configureCellLayout:(id)a3 forIndex:(int64_t)a4;
- (void)dealloc;
- (void)didEndDisplayingItemAtIndex:(int64_t)a3;
- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4;
- (void)itemStateCenterRestrictionsChanged:(id)a3;
- (void)loadNextPageOfArtworkWithReason:(int64_t)a3;
- (void)precacheNextPageArtworkForOffset:(CGPoint)a3 direction:(double)a4;
- (void)removeAllCachedResources;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setDelegate:(id)a3;
@end

@implementation SKUIItemCollectionController

- (id)_initSKUIItemCollectionController
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIItemCollectionController _initSKUIItemCollectionController];
  }

  v12.receiver = self;
  v12.super_class = SKUIItemCollectionController;
  v3 = [(SKUIItemCollectionController *)&v12 init];
  v4 = v3;
  if (v3)
  {
    v3->_numberOfItemsPerPage = 10;
    v3->_numberOfPagesToCacheAhead = 1.5;
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemIDsToArtworkRequestIDs = v4->_itemIDsToArtworkRequestIDs;
    v4->_itemIDsToArtworkRequestIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemIDsToScreenshotRequestIDs = v4->_itemIDsToScreenshotRequestIDs;
    v4->_itemIDsToScreenshotRequestIDs = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v4 selector:sel__memoryWarningNotification_ name:*MEMORY[0x277D76670] object:0];
    v10 = +[SKUIItemStateCenter defaultCenter];
    [v10 addObserver:v4];
  }

  return v4;
}

- (SKUIItemCollectionController)initWithClientContext:(id)a3
{
  v4 = a3;
  v5 = [(SKUIItemCollectionController *)self _initSKUIItemCollectionController];
  v6 = v5;
  if (v5)
  {
    [(SKUIItemCollectionController *)v5 setClientContext:v4];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76670] object:0];
  v4 = +[SKUIItemStateCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SKUIItemCollectionController;
  [(SKUIItemCollectionController *)&v5 dealloc];
}

- (void)cancelArtworkLoadForItemIndex:(int64_t)a3
{
  if ([(NSArray *)self->_items count]> a3)
  {
    v14 = [(NSArray *)self->_items objectAtIndex:a3];
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v14, "itemIdentifier")}];
    v6 = [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs objectForKey:v5];
    if (v6)
    {
      v7 = [(SKUIItemCollectionController *)self _artworkLoader];
      [v7 cancelRequestWithIdentifier:{objc_msgSend(v6, "unsignedIntegerValue")}];

      v8 = [(SKUIItemCollectionController *)self _artworkLoader];
      v9 = [v8 cachedResourceForRequestIdentifier:{objc_msgSend(v6, "unsignedIntegerValue")}];

      if (!v9)
      {
        [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs removeObjectForKey:v5];
      }
    }

    v10 = [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs objectForKey:v5];

    if (v10)
    {
      v11 = [(SKUIItemCollectionController *)self _artworkLoader];
      [v11 cancelRequestWithIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}];

      v12 = [(SKUIItemCollectionController *)self _artworkLoader];
      v13 = [v12 cachedResourceForRequestIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}];

      if (!v13)
      {
        [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs removeObjectForKey:v5];
      }
    }
  }
}

- (void)didEndDisplayingItemAtIndex:(int64_t)a3
{
  if ([(NSArray *)self->_items count]> a3)
  {
    v12 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "itemIdentifier")}];
    v6 = [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = [(SKUIItemCollectionController *)self _artworkLoader];
      v8 = [v7 trySetReason:0 forRequestWithIdentifier:{objc_msgSend(v6, "unsignedIntegerValue")}];

      if ((v8 & 1) == 0)
      {
        [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs removeObjectForKey:v5];
      }
    }

    v9 = [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs objectForKeyedSubscript:v5];
    if (v9)
    {
      v10 = [(SKUIItemCollectionController *)self _artworkLoader];
      v11 = [v10 trySetReason:0 forRequestWithIdentifier:{objc_msgSend(v9, "unsignedIntegerValue")}];

      if ((v11 & 1) == 0)
      {
        [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs removeObjectForKey:v5];
      }
    }
  }
}

- (void)configureCellLayout:(id)a3 forIndex:(int64_t)a4
{
  v21 = a3;
  v6 = [(NSArray *)self->_items objectAtIndexedSubscript:a4];
  v7 = +[SKUIItemStateCenter defaultCenter];
  v8 = [v7 isItemRestrictedWithParentalControlsRank:{objc_msgSend(v6, "parentalControlsRank")}];
  [v21 setRestricted:v8];
  v9 = [v6 storeIdentifier];
  if (v9)
  {
    v10 = [v7 stateForItemWithStoreIdentifier:v9];
    [v21 setItemState:v10];
  }

  v11 = [v6 artworkImage];
  if (v11)
  {
    v12 = v11;
    v13 = [(SKUIItemCollectionController *)self artworkContext];
    v14 = [v13 dataConsumerForItem:v6];

    v15 = [v14 imageForImage:v12];
    goto LABEL_13;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "itemIdentifier")}];
  v12 = [(SKUIItemCollectionController *)self _artworkLoader];
  v16 = [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs objectForKeyedSubscript:v14];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  v15 = [v12 cachedResourceForRequestIdentifier:{objc_msgSend(v16, "unsignedIntegerValue")}];
  if (!v15)
  {
    if ([v12 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v17, "unsignedIntegerValue")}])
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

LABEL_8:
    v18 = [(SKUIItemCollectionController *)self _iconArtworkRequestWithItem:v6];
    v19 = v18;
    if (v18)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "requestIdentifier")}];
      [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs setObject:v20 forKeyedSubscript:v14];

      [v12 loadResourceWithRequest:v19 reason:1];
    }

    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
  if (!v15)
  {
    v15 = [(SKUIItemCollectionController *)self _placeholderImageForItem:v6];
  }

  [v21 setIconImage:v15];
  [(SKUIItemCollectionController *)self _reloadScreenshotForCellLayout:v21 item:v6 isRestricted:v8];
}

- (void)loadNextPageOfArtworkWithReason:(int64_t)a3
{
  v5 = [(NSArray *)self->_items count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      if (v7 >= self->_numberOfItemsPerPage)
      {
        break;
      }

      v9 = [(NSArray *)self->_items objectAtIndexedSubscript:i];
      v10 = [(SKUIItemCollectionController *)self _loadArtworkForItem:v9 reason:a3];

      v7 += v10;
    }
  }
}

- (void)precacheNextPageArtworkForOffset:(CGPoint)a3 direction:(double)a4
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained itemCollectionController:self itemPageRangeForOffset:{x, y}];
  v11 = v10;

  if (v11)
  {
    [(SKUIItemCollectionController *)self numberOfPagesToCacheAhead];
    *&v12 = v12 * v11;
    v13 = vcvtps_s32_f32(*&v12);
    if (a4 <= 0.0)
    {
      v20 = v9 - 1;
      v21 = [(NSArray *)self->_items count];
      if (v9 - 1 >= v21 - 1)
      {
        v20 = v21 - 1;
      }

      v22 = (v9 - v13) & ~((v9 - v13) >> 63);
      if (v20 >= v22)
      {
        do
        {
          v23 = [(NSArray *)self->_items objectAtIndexedSubscript:v20];
          [(SKUIItemCollectionController *)self _loadArtworkForItem:v23 reason:-1];
        }

        while (v20-- > v22);
      }
    }

    else
    {
      v14 = v9 + v11;
      v15 = v9 + v13;
      v16 = [(NSArray *)self->_items count];
      if (v15 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      v18 = v14 & ~(v14 >> 63);
      if (v18 < v17)
      {
        do
        {
          v19 = [(NSArray *)self->_items objectAtIndexedSubscript:v18];
          [(SKUIItemCollectionController *)self _loadArtworkForItem:v19 reason:-1];

          ++v18;
        }

        while (v17 != v18);
      }
    }
  }
}

- (id)performActionForItemAtIndex:(int64_t)a3
{
  v4 = [(NSArray *)self->_items objectAtIndex:a3];
  v5 = +[SKUIItemStateCenter defaultCenter];
  v6 = [v5 performActionForItem:v4 clientContext:self->_clientContext];

  return v6;
}

- (void)removeAllCachedResources
{
  [(SKUIResourceLoader *)self->_artworkLoader removeAllCachedResources];
  [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs removeAllObjects];
  itemIDsToScreenshotRequestIDs = self->_itemIDsToScreenshotRequestIDs;

  [(NSMutableDictionary *)itemIDsToScreenshotRequestIDs removeAllObjects];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  [a3 contentOffset];
  v9 = a5->y - y;
  if (v9 == 0.0)
  {
    v10 = 1.0;
    v11 = self;
  }

  else
  {
    [SKUIItemCollectionController precacheNextPageArtworkForOffset:"precacheNextPageArtworkForOffset:direction:" direction:?];
    x = a5->x;
    y = a5->y;
    v11 = self;
    v10 = v9;
  }

  [(SKUIItemCollectionController *)v11 precacheNextPageArtworkForOffset:x direction:y, v10];
}

- (void)setDelegate:(id)a3
{
  v6 = a3;
  v4 = objc_storeWeak(&self->_delegate, v6);
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    self->_delegateProvidesScreenshots = objc_opt_respondsToSelector() & 1;
  }

  else
  {
    self->_delegateProvidesScreenshots = 0;
  }
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SKUIItemStateCenter defaultCenter];
  v9 = [v7 requestIdentifier];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SKUIItemCollectionController_artworkRequest_didLoadImage___block_invoke;
  v12[3] = &unk_2781FE9F8;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v9;
  v10 = v8;
  v11 = v6;
  [(SKUIItemCollectionController *)self _enumerateVisibleCellLayoutsWithBlock:v12];
}

void __60__SKUIItemCollectionController_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v7 = [*(*(a1 + 32) + 112) objectAtIndex:a2];
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v7, "itemIdentifier")}];
  v9 = [*(*(a1 + 32) + 8) objectForKey:v8];
  if ([v9 unsignedIntegerValue] == *(a1 + 56))
  {
    if (*(a1 + 40))
    {
      [v14 setIconImage:?];
    }

    else
    {
      v13 = [*(a1 + 32) _placeholderImageForItem:v7];
      [v14 setIconImage:v13];
    }

    *a4 = 1;
  }

  else
  {
    v10 = *(a1 + 32);
    if (*(v10 + 32) == 1)
    {
      v11 = [*(v10 + 24) objectForKey:v8];
      if ([v11 unsignedIntegerValue] == *(a1 + 56))
      {
        if (([*(a1 + 48) isItemRestrictedWithParentalControlsRank:{objc_msgSend(v7, "parentalControlsRank")}] & 1) == 0)
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
          [WeakRetained itemCollectionController:*(a1 + 32) applyScreenshotImage:*(a1 + 40) toCellLayout:v14];
        }

        *a4 = 1;
      }
    }
  }
}

- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SKUIItemCollectionController_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)itemStateCenterRestrictionsChanged:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SKUIItemCollectionController_itemStateCenterRestrictionsChanged___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_memoryWarningNotification:(id)a3
{
  [(SKUIResourceLoader *)self->_artworkLoader removeAllCachedResources];
  [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs removeAllObjects];
  itemIDsToScreenshotRequestIDs = self->_itemIDsToScreenshotRequestIDs;

  [(NSMutableDictionary *)itemIDsToScreenshotRequestIDs removeAllObjects];
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    v4 = [[SKUIResourceLoader alloc] initWithClientContext:self->_clientContext];
    v5 = self->_artworkLoader;
    self->_artworkLoader = v4;

    v6 = self->_artworkLoader;
    v7 = SKUIResourceLoaderGetNameForObject(self);
    [(SKUIResourceLoader *)v6 setName:v7];

    artworkLoader = self->_artworkLoader;
  }

  return artworkLoader;
}

- (void)_enumerateVisibleCellLayoutsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_items count];
  v6 = [(SKUIItemCollectionController *)self _visibleItemRange];
  v8 = v6 + v7;
  if (v6 < (v6 + v7))
  {
    v9 = v6;
    if (v6 < v5)
    {
      do
      {
        v15 = 0;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v11 = [WeakRetained itemCollectionController:self cellLayoutForItemIndex:v9];

        if (v11)
        {
          v4[2](v4, v9, v11, &v15);
        }

        v12 = v15;

        ++v9;
      }

      while (v12 != 1 && v9 < v8 && v9 < v5);
    }
  }
}

- (id)_iconArtworkRequestWithItem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [(SKUIItemArtworkContext *)self->_artworkContext URLForItem:v4];
  if (v8)
  {
    v9 = v8;
LABEL_7:
    v11 = objc_alloc_init(SKUIArtworkRequest);
    v12 = [(SKUIItemArtworkContext *)self->_artworkContext dataConsumerForItem:v4];
    if (v12)
    {
      [(SKUIArtworkRequest *)v11 setDataConsumer:v12];
    }

    else
    {
      v13 = [(SKUIItemCollectionController *)self iconDataConsumer];
      [(SKUIArtworkRequest *)v11 setDataConsumer:v13];
    }

    [(SKUIArtworkRequest *)v11 setDelegate:self];
    [(SKUIArtworkRequest *)v11 setURL:v9];
    goto LABEL_11;
  }

  if (v7 <= 1.0)
  {
    v10 = 100;
  }

  else
  {
    v10 = 200;
  }

  v9 = [v4 artworkURLForSize:v10];
  if (v9)
  {
    goto LABEL_7;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)_loadArtworkForItem:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [(SKUIItemCollectionController *)self _artworkLoader];
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v6, "itemIdentifier")}];
  v9 = [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs objectForKey:v8];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(SKUIItemCollectionController *)self _iconArtworkRequestWithItem:v6];
    v12 = v11;
    if (v11)
    {
      itemIDsToArtworkRequestIDs = self->_itemIDsToArtworkRequestIDs;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "requestIdentifier")}];
      [(NSMutableDictionary *)itemIDsToArtworkRequestIDs setObject:v14 forKey:v8];

      v10 = [v7 loadResourceWithRequest:v12 reason:a4];
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs objectForKey:v8];

  if (!v15)
  {
    v16 = [(SKUIItemCollectionController *)self _screenshotArtworkRequestWithItem:v6];
    v17 = v16;
    if (v16)
    {
      itemIDsToScreenshotRequestIDs = self->_itemIDsToScreenshotRequestIDs;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "requestIdentifier")}];
      [(NSMutableDictionary *)itemIDsToScreenshotRequestIDs setObject:v19 forKey:v8];

      [v7 loadResourceWithRequest:v17 reason:a4];
    }
  }

  return v10;
}

- (id)_placeholderImageForItem:(id)a3
{
  v4 = a3;
  artworkContext = self->_artworkContext;
  if (artworkContext)
  {
    v6 = [(SKUIItemArtworkContext *)artworkContext placeholderImageForItem:v4];
  }

  else
  {
    placeholderImage = self->_placeholderImage;
    if (!placeholderImage)
    {
      v8 = [(SKUIItemCollectionController *)self iconDataConsumer];
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
      v10 = [v8 imageForColor:v9];
      v11 = self->_placeholderImage;
      self->_placeholderImage = v10;

      placeholderImage = self->_placeholderImage;
    }

    v6 = placeholderImage;
  }

  v12 = v6;

  return v12;
}

- (id)_placeholderImageForScreenshot:(id)a3
{
  v4 = a3;
  v5 = [v4 orientationString];
  v6 = [v5 isEqualToString:@"landscape"];

  if (v6)
  {
    p_landscapeScreenshotPlaceholderImage = &self->_landscapeScreenshotPlaceholderImage;
    landscapeScreenshotPlaceholderImage = self->_landscapeScreenshotPlaceholderImage;
    if (!landscapeScreenshotPlaceholderImage)
    {
      v9 = [(SKUIItemCollectionController *)self landscapeScreenshotDataConsumer];
LABEL_6:
      v10 = v9;
      [v4 sizeForVariant:@"low-dpi"];
      v12 = v11;
      v14 = v13;
      v15 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
      v16 = [v10 imageForColor:v15 size:{v12, v14}];
      v17 = *p_landscapeScreenshotPlaceholderImage;
      *p_landscapeScreenshotPlaceholderImage = v16;

      landscapeScreenshotPlaceholderImage = *p_landscapeScreenshotPlaceholderImage;
    }
  }

  else
  {
    p_landscapeScreenshotPlaceholderImage = &self->_portraitScreenshotPlaceholderImage;
    landscapeScreenshotPlaceholderImage = self->_portraitScreenshotPlaceholderImage;
    if (!landscapeScreenshotPlaceholderImage)
    {
      v9 = [(SKUIItemCollectionController *)self portraitScreenshotDataConsumer];
      goto LABEL_6;
    }
  }

  v18 = landscapeScreenshotPlaceholderImage;

  return landscapeScreenshotPlaceholderImage;
}

- (void)_reloadForItemStateChange:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 storeIdentifier];
        [v5 setObject:v11 forKey:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SKUIItemCollectionController__reloadForItemStateChange___block_invoke;
  v14[3] = &unk_2781FEA20;
  v14[4] = self;
  v15 = v5;
  v13 = v5;
  [(SKUIItemCollectionController *)self _enumerateVisibleCellLayoutsWithBlock:v14];
}

void __58__SKUIItemCollectionController__reloadForItemStateChange___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(*(a1 + 32) + 112) objectAtIndex:a2];
  v6 = *(a1 + 40);
  v7 = [v5 storeIdentifier];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    [v9 setItemState:v8 animated:1];
  }
}

- (void)_reloadForRestrictionsChange
{
  v3 = +[SKUIItemStateCenter defaultCenter];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SKUIItemCollectionController__reloadForRestrictionsChange__block_invoke;
  v5[3] = &unk_2781FEA20;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(SKUIItemCollectionController *)self _enumerateVisibleCellLayoutsWithBlock:v5];
}

void __60__SKUIItemCollectionController__reloadForRestrictionsChange__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 112);
  v6 = a3;
  v8 = [v5 objectAtIndex:a2];
  v7 = [*(a1 + 40) isItemRestrictedWithParentalControlsRank:{objc_msgSend(v8, "parentalControlsRank")}];
  [v6 setRestricted:v7];
  [*(a1 + 32) _reloadScreenshotForCellLayout:v6 item:v8 isRestricted:v7];
}

- (void)_reloadScreenshotForCellLayout:(id)a3 item:(id)a4 isRestricted:(BOOL)a5
{
  v5 = a5;
  v22 = a3;
  v8 = a4;
  v9 = [(SKUIItemCollectionController *)self _screenshotForItem:v8];
  if (v9)
  {
    if (v5)
    {
      v10 = [(SKUIItemCollectionController *)self _placeholderImageForScreenshot:v9];
LABEL_16:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained itemCollectionController:self applyScreenshotImage:v10 toCellLayout:v22];

      goto LABEL_17;
    }

    v11 = [(SKUIItemCollectionController *)self _artworkLoader];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "itemIdentifier")}];
    v13 = [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      v10 = [v11 cachedResourceForRequestIdentifier:{objc_msgSend(v13, "unsignedIntegerValue")}];
      if (([v11 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v14, "unsignedIntegerValue")}] & 1) == 0)
      {
        v15 = [(SKUIItemCollectionController *)self _screenshotArtworkRequestWithItem:v8];
        v16 = v15;
        if (v15)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "requestIdentifier")}];
          [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs setObject:v17 forKeyedSubscript:v12];

          [v11 loadResourceWithRequest:v16 reason:1];
        }
      }

      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = [(SKUIItemCollectionController *)self _screenshotArtworkRequestWithItem:v8];
      v19 = v18;
      if (v18)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "requestIdentifier")}];
        [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs setObject:v20 forKeyedSubscript:v12];

        [v11 loadResourceWithRequest:v19 reason:1];
      }
    }

    v10 = [(SKUIItemCollectionController *)self _placeholderImageForScreenshot:v9];
LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
}

- (id)_screenshotArtworkRequestWithItem:(id)a3
{
  v4 = [(SKUIItemCollectionController *)self _screenshotForItem:a3];
  v5 = [v4 URLForVariant:@"low-dpi"];
  if (v5)
  {
    v6 = objc_alloc_init(SKUIArtworkRequest);
    [(SKUIArtworkRequest *)v6 setDelegate:self];
    v7 = [v4 orientationString];
    v8 = [v7 isEqualToString:@"landscape"];

    if (v8)
    {
      [(SKUIItemCollectionController *)self landscapeScreenshotDataConsumer];
    }

    else
    {
      [(SKUIItemCollectionController *)self portraitScreenshotDataConsumer];
    }
    v9 = ;
    [(SKUIArtworkRequest *)v6 setDataConsumer:v9];

    [(SKUIArtworkRequest *)v6 setURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_screenshotForItem:(id)a3
{
  if (self->_delegateProvidesScreenshots)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained itemCollectionController:self screenshotForItem:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_NSRange)_visibleItemRange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained visibleItemRangeForItemCollectionController:self];
  v6 = v5;

  if (v4)
  {
    ++v6;
    v7 = v4 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 + v7 >= [(NSArray *)self->_items count]- 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 + 1;
  }

  v9 = v7;
  result.length = v8;
  result.location = v9;
  return result;
}

- (SKUIItemCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_initSKUIItemCollectionController
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemCollectionController _initSKUIItemCollectionController]";
}

@end