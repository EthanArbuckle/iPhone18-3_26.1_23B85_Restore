@interface SKUILockupSwooshPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUILockupSwooshPageSection)initWithPageComponent:(id)component;
- (id)_artworkLoader;
- (id)_missingItemLoader;
- (id)_popSourceViewForOverlayController:(id)controller;
- (id)_swooshViewController;
- (id)cellForIndexPath:(id)path;
- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index;
- (id)swoosh:(id)swoosh videoThumbnailForCellAtIndex:(int64_t)index;
- (void)_addImpressionForItemIndex:(int64_t)index toSession:(id)session;
- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason;
- (void)_showProductPageForItem:(id)item index:(int64_t)index animated:(BOOL)animated;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)dealloc;
- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)productPageOverlayDidDismiss:(id)dismiss;
- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index;
- (void)swoosh:(id)swoosh willDisplayCellAtIndex:(int64_t)index;
- (void)swooshDidSelectSeeAll:(id)all;
- (void)willAppearInContext:(id)context;
@end

@implementation SKUILockupSwooshPageSection

- (SKUILockupSwooshPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupSwooshPageSection initWithPageComponent:];
  }

  v8.receiver = self;
  v8.super_class = SKUILockupSwooshPageSection;
  v5 = [(SKUIStorePageSection *)&v8 initWithPageComponent:componentCopy];
  v6 = v5;
  if (v5)
  {
    v5->_overlaySourceIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)dealloc
{
  [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  [(SKUILockupSwooshViewController *)self->_swooshViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUILockupSwooshPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sessionCopy = session;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  [(SKUILockupSwooshViewController *)self->_swooshViewController indexPathsForVisibleItems];
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
        -[SKUILockupSwooshPageSection _addImpressionForItemIndex:toSession:](self, "_addImpressionForItemIndex:toSession:", [v15 item], sessionCopy);
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SKUILockupSwooshPageSectionReuseIdentifier" forIndexPath:pathCopy];

  _swooshViewController = [(SKUILockupSwooshPageSection *)self _swooshViewController];
  view = [_swooshViewController view];

  contentChildView = [v7 contentChildView];

  if (view != contentChildView)
  {
    [v7 setContentChildView:view];
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  _swooshViewController = [(SKUILockupSwooshPageSection *)self _swooshViewController];
  view = [_swooshViewController view];

  [view sizeToFit];
  [view frame];
  v9 = v8;
  [collectionView bounds];
  v11 = v10;

  v12 = v11;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  _artworkLoader = [(SKUILockupSwooshPageSection *)self _artworkLoader];
  [_artworkLoader loadImagesForNextPageWithReason:reason];

  [(SKUILockupSwooshPageSection *)self _loadMissingItemsFromIndex:0 withReason:reason];
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUILockupSwooshPageSectionReuseIdentifier"];
  v6.receiver = self;
  v6.super_class = SKUILockupSwooshPageSection;
  [(SKUIStorePageSection *)&v6 willAppearInContext:contextCopy];
}

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    view = [(SKUILockupSwooshViewController *)self->_swooshViewController view];
    [view frame];
    v10 = v9;
    v12 = v11;
    v13 = [pageComponent _updateLockupItemsWithItems:itemsCopy];
    swooshViewController = self->_swooshViewController;
    lockups = [pageComponent lockups];
    [(SKUILockupSwooshViewController *)swooshViewController setLockups:lockups];

    [view frame];
    if (v17 != v10 || v16 != v12)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __85__SKUILockupSwooshPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
      v20[3] = &unk_2781F80F0;
      v20[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v20];
    }

    _artworkLoader = [(SKUILockupSwooshPageSection *)self _artworkLoader];
    [_artworkLoader loadImagesForNextPageWithReason:0];
  }
}

void __85__SKUILockupSwooshPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{objc_msgSend(*(a1 + 32), "sectionIndex")}];
  v3 = [*(a1 + 32) context];
  v4 = [v3 collectionView];
  v6[0] = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v4 reloadItemsAtIndexPaths:v5];
}

- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  lockups = [swooshCopy lockups];
  v7 = [lockups objectAtIndex:index];

  item = [v7 item];
  if (item)
  {
    v9 = [(SKUIStorePageSection *)self clickEventWithItem:item elementName:*MEMORY[0x277D6A4E0] index:index];
    if (v9)
    {
      [swooshCopy frameForItemAtIndex:index];
      SKUIMetricsSetClickEventPositionWithPoint(v9, v10, v11);
      context = [(SKUIStorePageSection *)self context];
      metricsController = [context metricsController];
      [metricsController recordEvent:v9];
    }

    [(SKUILockupSwooshPageSection *)self _showProductPageForItem:item index:index animated:1];
  }
}

- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  _artworkLoader = [(SKUILockupSwooshPageSection *)self _artworkLoader];
  lockups = [swooshCopy lockups];

  v9 = [lockups objectAtIndex:index];

  item = [v9 item];
  if (item)
  {
    v11 = [_artworkLoader cachedImageForItem:item];
    if (v11)
    {
      goto LABEL_6;
    }

    [_artworkLoader loadImageForItem:item reason:1];
    v12 = _artworkLoader;
    v13 = item;
  }

  else
  {
    v12 = _artworkLoader;
    v13 = 0;
  }

  v11 = [v12 placeholderImageForItem:v13];
LABEL_6:

  return v11;
}

- (id)swoosh:(id)swoosh videoThumbnailForCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  _artworkLoader = [(SKUILockupSwooshPageSection *)self _artworkLoader];
  lockups = [swooshCopy lockups];

  v9 = [lockups objectAtIndex:index];

  item = [v9 item];
  videos = [item videos];
  firstObject = [videos firstObject];

  v13 = _artworkLoader;
  if (firstObject)
  {
    v14 = [_artworkLoader cachedImageForVideo:firstObject];
    if (v14)
    {
      goto LABEL_6;
    }

    [_artworkLoader loadImageForVideo:firstObject reason:1];
    v13 = _artworkLoader;
    v15 = firstObject;
  }

  else
  {
    v15 = 0;
  }

  v14 = [v13 placeholderImageForVideo:v15];
LABEL_6:

  return v14;
}

- (void)swoosh:(id)swoosh willDisplayCellAtIndex:(int64_t)index
{
  context = [(SKUIStorePageSection *)self context];
  metricsController = [context metricsController];
  activeImpressionsSession = [metricsController activeImpressionsSession];

  if (activeImpressionsSession)
  {
    [(SKUILockupSwooshPageSection *)self _addImpressionForItemIndex:index toSession:activeImpressionsSession];
  }

  [(SKUILockupSwooshPageSection *)self _loadMissingItemsFromIndex:index withReason:1];
}

- (void)swooshDidSelectSeeAll:(id)all
{
  allCopy = all;
  seeAllURL = [allCopy seeAllURL];
  if (seeAllURL)
  {
    v5 = [[SKUILink alloc] initWithURL:seeAllURL];
    v6 = [(SKUIStorePageSection *)self clickEventWithLink:v5 elementName:*MEMORY[0x277D6A4D0] index:0];
    if (v6)
    {
      [allCopy seeAllButtonFrame];
      SKUIMetricsSetClickEventPositionWithPoint(v6, v7, v8);
      context = [(SKUIStorePageSection *)self context];
      metricsController = [context metricsController];
      [metricsController recordEvent:v6];
    }

    context2 = [(SKUIStorePageSection *)self context];
    parentViewController = [context2 parentViewController];

    v13 = objc_alloc_init(SKUIStorePageViewController);
    clientContext = [parentViewController clientContext];
    [(SKUIStorePageViewController *)v13 setClientContext:clientContext];

    title = [allCopy title];
    [(SKUIStorePageViewController *)v13 setTitle:title];

    [(SKUIStorePageViewController *)v13 loadURL:seeAllURL withCompletionBlock:0];
    navigationController = [parentViewController navigationController];
    [navigationController pushViewController:v13 animated:1];
  }
}

- (void)productPageOverlayDidDismiss:(id)dismiss
{
  context = [(SKUIStorePageSection *)self context];
  parentViewController = [context parentViewController];
  [parentViewController _pageSectionDidDismissOverlayController:self->_overlayController];

  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  overlayController = self->_overlayController;
  self->_overlayController = 0;

  [(SKUILockupSwooshViewController *)self->_swooshViewController unhideImages];
  self->_overlaySourceIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_addImpressionForItemIndex:(int64_t)index toSession:(id)session
{
  swooshViewController = self->_swooshViewController;
  sessionCopy = session;
  lockups = [(SKUILockupSwooshViewController *)swooshViewController lockups];
  v9 = [lockups objectAtIndex:index];

  [sessionCopy addItemIdentifier:{objc_msgSend(v9, "itemIdentifier")}];
  viewElement = [v9 viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    context = [(SKUIStorePageSection *)self context];
    v5 = [SKUILockupSwooshArtworkLoader alloc];
    resourceLoader = [context resourceLoader];
    _swooshViewController = [(SKUILockupSwooshPageSection *)self _swooshViewController];
    v8 = [(SKUILockupSwooshArtworkLoader *)v5 initWithArtworkLoader:resourceLoader swoosh:_swooshViewController];
    v9 = self->_artworkLoader;
    self->_artworkLoader = v8;

    v10 = self->_artworkLoader;
    colorScheme = [context colorScheme];
    [(SKUISwooshArtworkLoader *)v10 setPlaceholderColorWithColorScheme:colorScheme];

    artworkLoader = self->_artworkLoader;
  }

  return artworkLoader;
}

- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  if ([pageComponent isMissingItemData])
  {
    _missingItemLoader = [(SKUILockupSwooshPageSection *)self _missingItemLoader];
    [_missingItemLoader loadItemsForPageComponent:pageComponent startIndex:index reason:reason];
  }
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SKUIMissingItemLoader alloc];
    context = [(SKUIStorePageSection *)self context];
    resourceLoader = [context resourceLoader];
    v7 = [(SKUIMissingItemLoader *)v4 initWithResourceLoader:resourceLoader];
    v8 = self->_missingItemLoader;
    self->_missingItemLoader = v7;

    [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    platformKeyProfile = [pageComponent platformKeyProfile];

    if (platformKeyProfile)
    {
      [(SKUIMissingItemLoader *)self->_missingItemLoader setKeyProfile:platformKeyProfile];
    }

    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (id)_popSourceViewForOverlayController:(id)controller
{
  controllerCopy = controller;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  v6 = pageComponent;
  if (pageComponent)
  {
    [pageComponent lockupStyle];
  }

  if (self->_overlaySourceIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [controllerCopy numberOfVisibleOverlays];
  }

  return 0;
}

- (void)_showProductPageForItem:(id)item index:(int64_t)index animated:(BOOL)animated
{
  itemCopy = item;
  context = [(SKUIStorePageSection *)self context];
  parentViewController = [context parentViewController];

  clientContext = [parentViewController clientContext];
  if (SKUIUserInterfaceIdiom(clientContext) == 1 && SKUIItemKindIsSoftwareKind([itemCopy itemKind]))
  {
    if (!self->_overlayController)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __70__SKUILockupSwooshPageSection__showProductPageForItem_index_animated___block_invoke;
      v12[3] = &unk_2781FD2F0;
      v12[4] = self;
      v13 = parentViewController;
      v14 = clientContext;
      indexCopy = index;
      v15 = itemCopy;
      [(SKUIStorePageSection *)self sendXEventWithItem:v15 completionBlock:v12];
    }
  }

  else
  {
    [(SKUIStorePageSection *)self showProductViewControllerWithItem:itemCopy];
    _swooshViewController = [(SKUILockupSwooshPageSection *)self _swooshViewController];
    [_swooshViewController deselectAllItems];
  }
}

void __70__SKUILockupSwooshPageSection__showProductPageForItem_index_animated___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [[SKUIProductPageOverlayController alloc] initWithParentViewController:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    *(v5 + 104) = v4;

    [*(*(a1 + 32) + 104) setClientContext:*(a1 + 48)];
    [*(*(a1 + 32) + 104) setDelegate:?];
    *(*(a1 + 32) + 112) = *(a1 + 64);
    [*(*(a1 + 32) + 104) showWithInitialItem:*(a1 + 56)];
    [*(a1 + 40) _setActiveProductPageOverlayController:*(*(a1 + 32) + 104)];
    v7 = [*(a1 + 32) _swooshViewController];
    [v7 deselectAllItems];
  }
}

- (id)_swooshViewController
{
  swooshViewController = self->_swooshViewController;
  if (!swooshViewController)
  {
    context = [(SKUIStorePageSection *)self context];
    parentViewController = [context parentViewController];
    v6 = [SKUILockupSwooshViewController alloc];
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    v8 = [(SKUILockupSwooshViewController *)v6 initWithSwoosh:pageComponent];
    v9 = self->_swooshViewController;
    self->_swooshViewController = v8;

    v10 = self->_swooshViewController;
    clientContext = [parentViewController clientContext];
    [(SKUILockupSwooshViewController *)v10 setClientContext:clientContext];

    [(SKUILockupSwooshViewController *)self->_swooshViewController setDelegate:self];
    v12 = self->_swooshViewController;
    colorScheme = [context colorScheme];
    [(SKUILockupSwooshViewController *)v12 setColorScheme:colorScheme];

    [parentViewController addChildViewController:self->_swooshViewController];
    swooshViewController = self->_swooshViewController;
  }

  return swooshViewController;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupSwooshPageSection initWithPageComponent:]";
}

@end