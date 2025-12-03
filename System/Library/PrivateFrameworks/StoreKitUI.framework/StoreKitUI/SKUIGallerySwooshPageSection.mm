@interface SKUIGallerySwooshPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUIGallerySwooshPageSection)initWithPageComponent:(id)component;
- (id)_newArtworkRequestWithArtwork:(id)artwork;
- (id)_swooshViewController;
- (id)cellForIndexPath:(id)path;
- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index;
- (void)_addImpressionForIndex:(int64_t)index toSession:(id)session;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)swoosh:(id)swoosh didChangePlaybackState:(int64_t)state forItemAtIndex:(int64_t)index;
- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index;
- (void)swoosh:(id)swoosh willDisplayCellAtIndex:(int64_t)index;
- (void)willAppearInContext:(id)context;
@end

@implementation SKUIGallerySwooshPageSection

- (SKUIGallerySwooshPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGallerySwooshPageSection initWithPageComponent:];
  }

  v9.receiver = self;
  v9.super_class = SKUIGallerySwooshPageSection;
  v5 = [(SKUIStorePageSection *)&v9 initWithPageComponent:componentCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    componentArtworkRequests = v5->_componentArtworkRequests;
    v5->_componentArtworkRequests = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(SKUIGallerySwooshViewController *)self->_swooshViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIGallerySwooshPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  indexPathsForVisibleItems = [(SKUIGallerySwooshViewController *)self->_swooshViewController indexPathsForVisibleItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        -[SKUIGallerySwooshPageSection _addImpressionForIndex:toSession:](self, "_addImpressionForIndex:toSession:", [*(*(&v13 + 1) + 8 * v12++) item], sessionCopy);
      }

      while (v10 != v12);
      v10 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)willAppearInContext:(id)context
{
  collectionView = [context collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUIGallerySwooshPageSectionReuseIdentifier"];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SKUIGallerySwooshPageSectionReuseIdentifier" forIndexPath:pathCopy];

  _swooshViewController = [(SKUIGallerySwooshPageSection *)self _swooshViewController];
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

  _swooshViewController = [(SKUIGallerySwooshPageSection *)self _swooshViewController];
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
  selfCopy = self;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  mediaComponents = [pageComponent mediaComponents];

  context = [(SKUIStorePageSection *)selfCopy context];
  resourceLoader = [context resourceLoader];

  _swooshViewController = [(SKUIGallerySwooshPageSection *)selfCopy _swooshViewController];
  v7 = [mediaComponents count];
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = 0;
    v10 = 1;
    v11 = &OBJC_IVAR___SKUIGiftContactSearchController__autocompleteSearchResults;
    v23 = selfCopy;
    do
    {
      v12 = [mediaComponents objectAtIndex:{v10 - 1, v23}];
      v13 = v11[344];
      v14 = [*(&selfCopy->super.super.isa + v13) objectForKey:v12];

      if (!v14)
      {
        v15 = [_swooshViewController artworkForItemAtIndex:v10 - 1];
        v16 = [(SKUIGallerySwooshPageSection *)selfCopy _newArtworkRequestWithArtwork:v15];
        v17 = v16;
        if (v16)
        {
          v18 = *(&selfCopy->super.super.isa + v13);
          v19 = v8;
          v20 = v11;
          v21 = _swooshViewController;
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "requestIdentifier")}];
          [v18 setObject:v22 forKey:v12];

          _swooshViewController = v21;
          v11 = v20;
          v8 = v19;
          selfCopy = v23;
          [resourceLoader loadResourceWithRequest:v17 reason:reason];
          ++v9;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      ++v10;
    }

    while (v9 < 4);
  }
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  imageCopy = image;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  mediaComponents = [pageComponent mediaComponents];

  requestIdentifier = [requestCopy requestIdentifier];
  _swooshViewController = [(SKUIGallerySwooshPageSection *)self _swooshViewController];
  indexPathsForVisibleItems = [_swooshViewController indexPathsForVisibleItems];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = indexPathsForVisibleItems;
  v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    v22 = imageCopy;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [mediaComponents objectAtIndex:{objc_msgSend(v17, "item")}];
        v19 = [(NSMapTable *)self->_componentArtworkRequests objectForKey:v18];
        if ([v19 unsignedIntegerValue] == requestIdentifier)
        {
          _swooshViewController2 = [(SKUIGallerySwooshPageSection *)self _swooshViewController];
          item = [v17 item];
          imageCopy = v22;
          [_swooshViewController2 setImage:v22 forItemAtIndex:item];

          goto LABEL_11;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      imageCopy = v22;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)swoosh:(id)swoosh didChangePlaybackState:(int64_t)state forItemAtIndex:(int64_t)index
{
  v23[2] = *MEMORY[0x277D85DE8];
  context = [(SKUIStorePageSection *)self context];
  metricsController = [context metricsController];

  if ([metricsController canRecordEventWithType:*MEMORY[0x277D6A488]])
  {
    v10 = objc_alloc_init(MEMORY[0x277D69BA8]);
    v11 = SKUIMetricsMediaEventTypeForPlaybackState(state);
    [v10 setMediaEventType:v11];

    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    mediaComponents = [pageComponent mediaComponents];
    v14 = [mediaComponents objectAtIndex:index];

    mediaIdentifier = [v14 mediaIdentifier];
    if (mediaIdentifier)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:mediaIdentifier];
      [v10 setItemIdentifier:v16];
    }

    mediaURLString = [v14 mediaURLString];
    [v10 setMediaURL:mediaURLString];

    pageComponent2 = [(SKUIStorePageSection *)self pageComponent];
    v19 = [metricsController locationWithPageComponent:pageComponent2];

    v20 = [metricsController locationWithPageComponent:v14];
    v21 = v20;
    if (v19 && v20)
    {
      v23[0] = v20;
      v23[1] = v19;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      [v10 setLocationWithEventLocations:v22];
    }

    [metricsController recordEvent:v10];
  }
}

- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  mediaComponents = [pageComponent mediaComponents];
  v8 = [mediaComponents objectAtIndex:index];

  v9 = [(SKUIStorePageSection *)self clickEventWithMedia:v8 elementName:*MEMORY[0x277D6A4E0] index:index];
  if (v9)
  {
    context = [(SKUIStorePageSection *)self context];
    metricsController = [context metricsController];
    [metricsController recordEvent:v9];
  }

  if ([v8 mediaType])
  {
    [swooshCopy performActionForItemAtIndex:index animated:1];
  }

  else
  {
    link = [v8 link];
    [(SKUIStorePageSection *)self showPageWithLink:link];
  }
}

- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  context = [(SKUIStorePageSection *)self context];
  resourceLoader = [context resourceLoader];

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  mediaComponents = [pageComponent mediaComponents];
  v11 = [mediaComponents objectAtIndex:index];

  v12 = [(NSMapTable *)self->_componentArtworkRequests objectForKey:v11];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    goto LABEL_4;
  }

  v14 = [resourceLoader cachedResourceForRequestIdentifier:unsignedIntegerValue];
  if (v14)
  {
    goto LABEL_8;
  }

  if (([resourceLoader trySetReason:1 forRequestWithIdentifier:unsignedIntegerValue] & 1) == 0)
  {
LABEL_4:
    v15 = [swooshCopy artworkForItemAtIndex:index];
    v16 = [(SKUIGallerySwooshPageSection *)self _newArtworkRequestWithArtwork:v15];
    v17 = v16;
    if (v16)
    {
      componentArtworkRequests = self->_componentArtworkRequests;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "requestIdentifier")}];
      [(NSMapTable *)componentArtworkRequests setObject:v19 forKey:v11];

      [resourceLoader loadResourceWithRequest:v17 reason:1];
    }
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)swoosh:(id)swoosh willDisplayCellAtIndex:(int64_t)index
{
  context = [(SKUIStorePageSection *)self context];
  metricsController = [context metricsController];
  activeImpressionsSession = [metricsController activeImpressionsSession];

  v8 = activeImpressionsSession;
  if (activeImpressionsSession)
  {
    [(SKUIGallerySwooshPageSection *)self _addImpressionForIndex:index toSession:activeImpressionsSession];
    v8 = activeImpressionsSession;
  }
}

- (void)_addImpressionForIndex:(int64_t)index toSession:(id)session
{
  sessionCopy = session;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  mediaComponents = [pageComponent mediaComponents];
  v10 = [mediaComponents objectAtIndex:index];

  [sessionCopy addItemIdentifier:{objc_msgSend(v10, "mediaIdentifier")}];
  viewElement = [v10 viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (id)_newArtworkRequestWithArtwork:(id)artwork
{
  artworkCopy = artwork;
  v5 = [artworkCopy URL];
  if (v5)
  {
    v6 = objc_alloc_init(SKUIArtworkRequest);
    v7 = +[SKUISizeToFitImageDataConsumer consumerWithConstraintSize:](SKUISizeToFitImageDataConsumer, "consumerWithConstraintSize:", [artworkCopy width], objc_msgSend(artworkCopy, "height"));
    [(SKUIArtworkRequest *)v6 setDataConsumer:v7];

    [(SKUIArtworkRequest *)v6 setDelegate:self];
    [(SKUIArtworkRequest *)v6 setURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_swooshViewController
{
  swooshViewController = self->_swooshViewController;
  if (!swooshViewController)
  {
    context = [(SKUIStorePageSection *)self context];
    parentViewController = [context parentViewController];
    v6 = [SKUIGallerySwooshViewController alloc];
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    v8 = [(SKUIGallerySwooshViewController *)v6 initWithGallerySwoosh:pageComponent];
    v9 = self->_swooshViewController;
    self->_swooshViewController = v8;

    v10 = self->_swooshViewController;
    clientContext = [parentViewController clientContext];
    [(SKUISwooshViewController *)v10 setClientContext:clientContext];

    v12 = self->_swooshViewController;
    colorScheme = [context colorScheme];
    [(SKUIGallerySwooshViewController *)v12 setColorScheme:colorScheme];

    [(SKUIGallerySwooshViewController *)self->_swooshViewController setDelegate:self];
    [parentViewController addChildViewController:self->_swooshViewController];

    swooshViewController = self->_swooshViewController;
  }

  return swooshViewController;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGallerySwooshPageSection initWithPageComponent:]";
}

@end