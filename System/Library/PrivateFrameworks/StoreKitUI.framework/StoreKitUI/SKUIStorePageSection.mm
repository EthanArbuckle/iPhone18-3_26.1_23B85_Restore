@interface SKUIStorePageSection
- (BOOL)containsElementWithIndexBarEntryID:(id)d;
- (BOOL)performDefaultActionForViewElement:(id)element;
- (CGSize)cellSizeForIndexPath:(id)path;
- (CGSize)preferredContentSize;
- (NSArray)indexPathsForPinningItems;
- (NSSet)relevantEntityProviders;
- (SKUIStorePageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)sectionContentInset;
- (_NSRange)itemRangeForIndexPathRange:(SKUIIndexPathRange *)range;
- (id)_clickEventWithElementName:(id)name index:(int64_t)index fieldData:(id)data;
- (id)backgroundColorForIndexPath:(id)path;
- (id)clickEventWithItem:(id)item elementName:(id)name index:(int64_t)index;
- (id)clickEventWithLink:(id)link elementName:(id)name index:(int64_t)index;
- (id)clickEventWithMedia:(id)media elementName:(id)name index:(int64_t)index;
- (id)itemOfferClickEventWithItem:(id)item elementName:(id)name index:(int64_t)index;
- (id)performItemOfferActionForItem:(id)item;
- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)d relativeSectionIndex:(int64_t)index;
- (int64_t)_itemPinningGroup;
- (int64_t)_itemPinningStyle;
- (int64_t)applyUpdateType:(int64_t)type;
- (int64_t)pinningTransitionStyleForItemAtIndexPath:(id)path;
- (int64_t)updateWithContext:(id)context pageComponent:(id)component;
- (void)_recursivelyAddRelevantEntityProvidersForViewElement:(id)element toSet:(id)set;
- (void)_sendXEventWithDictionary:(id)dictionary completionBlock:(id)block;
- (void)_setContext:(id)context;
- (void)collectionViewDidConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path;
- (void)collectionViewDidLongPressItemAtIndexPath:(id)path;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)playVideoForElement:(id)element;
- (void)playVideoWithURL:(id)l;
- (void)productPageOverlayDidDismiss:(id)dismiss;
- (void)reloadVisibleCellsWithReason:(int64_t)reason;
- (void)sendXEventWithItem:(id)item completionBlock:(id)block;
- (void)sendXEventWithLink:(id)link completionBlock:(id)block;
- (void)showPageWithLink:(id)link;
- (void)showProductViewControllerWithItem:(id)item;
@end

@implementation SKUIStorePageSection

- (SKUIStorePageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIStorePageSection initWithPageComponent:];
  }

  v9.receiver = self;
  v9.super_class = SKUIStorePageSection;
  v6 = [(SKUIStorePageSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_component, component);
  }

  return v7;
}

- (void)dealloc
{
  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIStorePageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (int64_t)applyUpdateType:(int64_t)type
{
  if (type != 2)
  {
    relevantEntityProviders = self->_relevantEntityProviders;
    self->_relevantEntityProviders = 0;

    self->_hasValidRelevantEntityProviders = 0;
  }

  context = [(SKUIStorePageSection *)self context];
  [(SKUIStorePageSection *)self willAppearInContext:context];

  return type;
}

- (id)backgroundColorForIndexPath:(id)path
{
  context = [(SKUIStorePageSection *)self context];
  colorScheme = [context colorScheme];

  backgroundColor = [colorScheme backgroundColor];
  v6 = backgroundColor;
  if (backgroundColor)
  {
    systemBackgroundColor = backgroundColor;
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v8 = systemBackgroundColor;

  return v8;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)clickEventWithItem:(id)item elementName:(id)name index:(int64_t)index
{
  itemCopy = item;
  v9 = [(SKUIStorePageSection *)self _clickEventWithElementName:name index:index fieldData:itemCopy];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(itemCopy, "itemIdentifier")];
    [v9 setTargetIdentifier:v10];

    productPageURLString = [itemCopy productPageURLString];
    [v9 setTargetURL:productPageURLString];
  }

  return v9;
}

- (id)clickEventWithLink:(id)link elementName:(id)name index:(int64_t)index
{
  linkCopy = link;
  v9 = [(SKUIStorePageSection *)self _clickEventWithElementName:name index:index fieldData:linkCopy];
  if (v9)
  {
    item = [linkCopy item];
    v11 = item;
    if (item)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(item, "itemIdentifier")];
      [v9 setTargetIdentifier:v12];

      productPageURLString = [v11 productPageURLString];
      [v9 setTargetURL:productPageURLString];
    }

    else
    {
      productPageURLString = [linkCopy URL];
      absoluteString = [productPageURLString absoluteString];
      [v9 setTargetURL:absoluteString];
    }
  }

  return v9;
}

- (id)clickEventWithMedia:(id)media elementName:(id)name index:(int64_t)index
{
  mediaCopy = media;
  nameCopy = name;
  if ([mediaCopy mediaType])
  {
    v10 = [(SKUIStorePageSection *)self _clickEventWithElementName:nameCopy index:index fieldData:mediaCopy];
    if (!v10)
    {
      goto LABEL_10;
    }

    mediaIdentifier = [mediaCopy mediaIdentifier];
    if (mediaIdentifier)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", mediaIdentifier];
      [v10 setTargetIdentifier:v12];
    }

    mediaURLString = [mediaCopy mediaURLString];
    [v10 setTargetURL:mediaURLString];
  }

  else
  {
    mediaURLString = [mediaCopy link];
    if (mediaURLString)
    {
      v10 = [(SKUIStorePageSection *)self clickEventWithLink:mediaURLString elementName:nameCopy index:index];
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_10:

  return v10;
}

- (void)collectionViewDidConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path
{
  v20[1] = *MEMORY[0x277D85DE8];
  elementCopy = element;
  infoCopy = info;
  itemIdentifier = [elementCopy itemIdentifier];
  if (itemIdentifier)
  {
    v9 = itemIdentifier;
    v10 = +[SKUIItemStateCenter defaultCenter];
    v11 = [v10 stateForItemWithIdentifier:v9];

    if (v11)
    {
      buyButtonDescriptor = [elementCopy buyButtonDescriptor];
      v13 = [buyButtonDescriptor canPerformLocalActionWithItemState:v11];

      if (v13)
      {
        state = [v11 state];
        if ((state & 2) != 0)
        {
          anyObject = +[SKUIItemStateCenter defaultCenter];
          [anyObject cancelDownloadForItemWithIdentifier:v9];
LABEL_14:

          v18 = 6;
          goto LABEL_10;
        }

        if ((state & 0x40) != 0)
        {
          personalizationLibraryItems = [elementCopy personalizationLibraryItems];
          anyObject = [personalizationLibraryItems anyObject];

          v16 = +[SKUIItemStateCenter defaultCenter];
          [v16 performActionForLibraryItem:anyObject];
          goto LABEL_13;
        }

        if ((state & 0x24) == 4)
        {
          anyObject = objc_alloc_init(MEMORY[0x277D69C68]);
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
          v20[0] = v16;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
          [anyObject getLibraryItemsForITunesStoreItemIdentifiers:v17 completionBlock:&__block_literal_global_10];

LABEL_13:
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = 2;
LABEL_10:
  [elementCopy dispatchEventOfType:v18 canBubble:1 isCancelable:1 extraInfo:infoCopy completionBlock:0];
}

void __95__SKUIStorePageSection_collectionViewDidConfirmButtonElement_withClickInfo_forItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 firstObject];
  v2 = [v5 valueForProperty:*MEMORY[0x277D6A5B0]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    SKUIMetricsLaunchApplicationWithIdentifier(v4, 0);
    CFRelease(v4);
  }
}

- (void)collectionViewDidLongPressItemAtIndexPath:(id)path
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  [viewElement dispatchEventOfType:3 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([(SKUIStorePageSection *)self fitsToHeight])
  {
    collectionView = [(SKUIStorePageSectionContext *)self->_context collectionView];
    [collectionView bounds];
    v6 = v5;
    v8 = v7;
    [collectionView contentInset];
    [attributesCopy frame];
    [attributesCopy setFrame:?];
    [attributesCopy setSize:{v6, v8}];
  }

  indexPath = [attributesCopy indexPath];
  v10 = [(SKUIStorePageSection *)self backgroundColorForIndexPath:indexPath];
  [attributesCopy setBackgroundColor:v10];
}

- (BOOL)containsElementWithIndexBarEntryID:(id)d
{
  dCopy = d;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  v7 = [viewElement firstDescendentWithIndexBarEntryID:dCopy];

  return v7 != 0;
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  v7 = [(SKUIStorePageSection *)self context:provider];
  collectionView = [v7 collectionView];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  [collectionView reloadSections:v6];
}

- (NSArray)indexPathsForPinningItems
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([(SKUIStorePageSection *)self numberOfCells]== 1 && [(SKUIStorePageSection *)self _itemPinningStyle])
  {
    v3 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v6[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)itemOfferClickEventWithItem:(id)item elementName:(id)name index:(int64_t)index
{
  v24[3] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  nameCopy = name;
  context = [(SKUIStorePageSection *)self context];
  metricsController = [context metricsController];
  v12 = [metricsController itemOfferClickEventWithItem:itemCopy locationPosition:index];
  if (v12)
  {
    v13 = [metricsController locationWithPosition:0 type:*MEMORY[0x277D6A4D0] fieldData:0];
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    v15 = [metricsController locationWithPageComponent:pageComponent];

    v16 = [metricsController locationWithPosition:index type:nameCopy fieldData:itemCopy];
    v17 = v16;
    if (v13)
    {
      v18 = v15 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18 && v16 != 0)
    {
      v24[0] = v13;
      v24[1] = v16;
      v24[2] = v15;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
      [v12 setLocationWithEventLocations:v20];
    }

    parentViewController = [context parentViewController];
    _visibleMetricsImpressionsString = [parentViewController _visibleMetricsImpressionsString];
    [v12 setImpressions:_visibleMetricsImpressionsString];
  }

  return v12;
}

- (_NSRange)itemRangeForIndexPathRange:(SKUIIndexPathRange *)range
{
  sectionIndex = [(SKUIStorePageSection *)self sectionIndex];
  if (range->var0 >= sectionIndex)
  {
    var1 = range->var1;
  }

  else
  {
    var1 = 0;
  }

  if (range->var2 == sectionIndex)
  {
    numberOfCells = range->var3 + 1;
  }

  else
  {
    numberOfCells = [(SKUIStorePageSection *)self numberOfCells];
  }

  v8 = numberOfCells - var1;
  v9 = var1;
  result.length = v8;
  result.location = v9;
  return result;
}

- (BOOL)performDefaultActionForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  if (elementType == 14)
  {
LABEL_4:
    v6 = [elementCopy firstChildForElementType:152];
    goto LABEL_6;
  }

  if (elementType != 152)
  {
    if (elementType != 66)
    {
LABEL_9:
      LOBYTE(isEnabled) = 0;
      goto LABEL_12;
    }

    goto LABEL_4;
  }

  v6 = elementCopy;
LABEL_6:
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  isEnabled = [v6 isEnabled];
  if (isEnabled)
  {
    [(SKUIStorePageSection *)self playVideoForElement:v7];
  }

  else
  {
    [elementCopy dispatchEvent:0x28280CC48 eventAttribute:0x28280CC68 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }

LABEL_12:
  return isEnabled;
}

- (id)performItemOfferActionForItem:(id)item
{
  itemCopy = item;
  if (SKUIItemKindIsSoftwareKind([itemCopy itemKind]))
  {
    context = [(SKUIStorePageSection *)self context];
    parentViewController = [context parentViewController];
    clientContext = [parentViewController clientContext];

    metricsController = [context metricsController];
    v9 = metricsController;
    if (metricsController)
    {
      v10 = [metricsController performActionForItem:itemCopy clientContext:clientContext];
    }

    else
    {
      v11 = +[SKUIItemStateCenter defaultCenter];
      v10 = [v11 performActionForItem:itemCopy clientContext:clientContext];
    }
  }

  else
  {
    [(SKUIStorePageSection *)self showProductViewControllerWithItem:itemCopy];
    v10 = 0;
  }

  return v10;
}

- (int64_t)pinningTransitionStyleForItemAtIndexPath:(id)path
{
  context = [(SKUIStorePageSection *)self context];
  defaultPinningTransitionStyle = [context defaultPinningTransitionStyle];

  return defaultPinningTransitionStyle;
}

- (void)playVideoForElement:(id)element
{
  elementCopy = element;
  assets = [elementCopy assets];
  v6 = [assets copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SKUIStorePageSection_playVideoForElement___block_invoke;
  v8[3] = &unk_2781FB538;
  v9 = elementCopy;
  selfCopy = self;
  v7 = elementCopy;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __44__SKUIStorePageSection_playVideoForElement___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v13 = [[SKUIPlayableAsset alloc] initWithVideoViewElement:*(a1 + 32) assetViewElement:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) context];
  v9 = [v8 clientContext];
  v10 = SKUIVideoPreviewPlayPlayableVideoWithAsset(v7, v13, v9);

  if (v10)
  {
    v11 = [*(a1 + 40) context];
    v12 = [v11 parentViewController];

    [v12 presentViewController:v10 animated:1 completion:0];
    SKUIVideoPreviewDismissOnEnterBackground(v10);
    *a4 = 1;
  }
}

- (void)playVideoWithURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v10 = [[SKUIPlayableAsset alloc] initWithContentURL:lCopy];

    context = [(SKUIStorePageSection *)self context];
    clientContext = [context clientContext];
    v7 = SKUIVideoPreviewPlayPlayableAsset(v10, clientContext);

    if (v7)
    {
      context2 = [(SKUIStorePageSection *)self context];
      parentViewController = [context2 parentViewController];

      [parentViewController presentViewController:v7 animated:1 completion:0];
      SKUIVideoPreviewDismissOnEnterBackground(v7);
    }
  }
}

- (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSSet)relevantEntityProviders
{
  if (!self->_hasValidRelevantEntityProviders)
  {
    self->_hasValidRelevantEntityProviders = 1;
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];

    if (viewElement)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
      [(SKUIStorePageSection *)self _recursivelyAddRelevantEntityProvidersForViewElement:viewElement toSet:v5];
    }

    else
    {
      v5 = 0;
    }

    if ([v5 count])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&self->_relevantEntityProviders, v6);
  }

  relevantEntityProviders = self->_relevantEntityProviders;

  return relevantEntityProviders;
}

- (void)reloadVisibleCellsWithReason:(int64_t)reason
{
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  sectionIndex = [(SKUIStorePageSection *)self sectionIndex];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SKUIStorePageSection_reloadVisibleCellsWithReason___block_invoke;
  v9[3] = &unk_2781FB560;
  v9[4] = self;
  v9[5] = sectionIndex;
  v9[6] = reason;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v9];
}

void __53__SKUIStorePageSection_reloadVisibleCellsWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 section] == *(a1 + 40))
  {
    [*(a1 + 32) reloadCellWithIndexPath:v3 reason:*(a1 + 48)];
  }
}

- (UIEdgeInsets)sectionContentInset
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  if (viewElement)
  {
    v4 = 15.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v6 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v4 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
  }

  result.right = v7;
  result.bottom = v4;
  result.left = v5;
  result.top = v6;
  return result;
}

- (void)sendXEventWithItem:(id)item completionBlock:(id)block
{
  blockCopy = block;
  lookupDictionary = [item lookupDictionary];
  [(SKUIStorePageSection *)self _sendXEventWithDictionary:lookupDictionary completionBlock:blockCopy];
}

- (void)sendXEventWithLink:(id)link completionBlock:(id)block
{
  linkCopy = link;
  blockCopy = block;
  item = [linkCopy item];
  if (item)
  {
    [(SKUIStorePageSection *)self sendXEventWithItem:item completionBlock:blockCopy];
  }

  else
  {
    linkDictionary = [linkCopy linkDictionary];
    [(SKUIStorePageSection *)self _sendXEventWithDictionary:linkDictionary completionBlock:blockCopy];
  }
}

- (void)showPageWithLink:(id)link
{
  linkCopy = link;
  item = [linkCopy item];
  v6 = [linkCopy URL];
  v7 = v6;
  if (!item)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    context = [(SKUIStorePageSection *)self context];
    parentViewController = [context parentViewController];

    delegate = [parentViewController delegate];
    if (objc_opt_respondsToSelector())
    {
      if ([delegate sectionsViewController:parentViewController showStorePageForURL:v7])
      {
        goto LABEL_16;
      }
    }

    else
    {
      targetString = [linkCopy targetString];
      v12 = [targetString isEqualToString:@"external"];

      if (v12)
      {
        v13 = SKUIMobileCoreServicesFramework();
        v14 = [SKUIWeakLinkedClassForString(&cfstr_Lsapplicationw.isa v13)];
        [(SKUIURL *)v14 openSensitiveURL:v7 withOptions:0];
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }
    }

    v14 = [[SKUIURL alloc] initWithURL:v7];
    actionString = [(SKUIURL *)v14 actionString];

    if (actionString)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      delegate2 = [mEMORY[0x277D75128] delegate];

      if (objc_opt_respondsToSelector())
      {
        mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
        [delegate2 application:mEMORY[0x277D75128]2 openURL:v7 sourceApplication:0 annotation:MEMORY[0x277CBEC10]];
      }

      else
      {
        v19 = SKUIMobileCoreServicesFramework();
        mEMORY[0x277D75128]2 = [SKUIWeakLinkedClassForString(&cfstr_Lsapplicationw.isa v19)];
        [mEMORY[0x277D75128]2 openSensitiveURL:v7 withOptions:0];
      }
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __41__SKUIStorePageSection_showPageWithLink___block_invoke;
      v20[3] = &unk_2781FB588;
      v21 = parentViewController;
      v22 = linkCopy;
      v23 = v7;
      [(SKUIStorePageSection *)self sendXEventWithLink:v22 completionBlock:v20];
    }

    goto LABEL_15;
  }

  [(SKUIStorePageSection *)self showProductViewControllerWithItem:item];
LABEL_17:
}

void __41__SKUIStorePageSection_showPageWithLink___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v7 = objc_alloc_init(SKUIStorePageViewController);
    v4 = [*(a1 + 32) clientContext];
    [(SKUIStorePageViewController *)v7 setClientContext:v4];

    v5 = [*(a1 + 40) title];
    [(SKUIStorePageViewController *)v7 setTitle:v5];

    [(SKUIStorePageViewController *)v7 loadURL:*(a1 + 48) withCompletionBlock:0];
    v6 = [*(a1 + 32) navigationController];
    [v6 pushViewController:v7 animated:1];
  }
}

- (void)showProductViewControllerWithItem:(id)item
{
  itemCopy = item;
  context = [(SKUIStorePageSection *)self context];
  parentViewController = [context parentViewController];

  delegate = [parentViewController delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate sectionsViewController:parentViewController showProductPageForItem:itemCopy] & 1) == 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__SKUIStorePageSection_showProductViewControllerWithItem___block_invoke;
    v8[3] = &unk_2781FB588;
    v9 = itemCopy;
    v10 = parentViewController;
    selfCopy = self;
    [(SKUIStorePageSection *)self sendXEventWithItem:v9 completionBlock:v8];
  }
}

void __58__SKUIStorePageSection_showProductViewControllerWithItem___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (SKUIItemKindIsSoftwareKind([*(a1 + 32) itemKind]))
    {
      v3 = [MEMORY[0x277D75418] currentDevice];
      v4 = [v3 userInterfaceIdiom];

      if (v4)
      {
        if (!*(*(a1 + 48) + 40))
        {
          v5 = [[SKUIProductPageOverlayController alloc] initWithParentViewController:*(a1 + 40)];
          v6 = *(a1 + 48);
          v7 = *(v6 + 40);
          *(v6 + 40) = v5;

          v8 = *(*(a1 + 48) + 40);
          v9 = [*(a1 + 40) clientContext];
          [v8 setClientContext:v9];

          [*(*(a1 + 48) + 40) setDelegate:?];
          [*(*(a1 + 48) + 40) showWithInitialItem:*(a1 + 32)];
          v10 = *(a1 + 40);
          v11 = *(*(a1 + 48) + 40);

          [v10 _setActiveProductPageOverlayController:v11];
        }
      }

      else
      {
        v19 = [[SKUIIPhoneProductPageViewController alloc] initWithItem:*(a1 + 32)];
        v17 = [*(a1 + 40) clientContext];
        [(SKUIViewController *)v19 setClientContext:v17];

        v18 = [*(a1 + 40) navigationController];
        [v18 pushViewController:v19 animated:1];
      }
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CDD3A8]);
      [v12 setAutomaticallyDismisses:1];
      v13 = objc_alloc(MEMORY[0x277CBEAC0]);
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "itemIdentifier")}];
      v15 = [v13 initWithObjectsAndKeys:{v14, *MEMORY[0x277CDD450], 0}];

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __58__SKUIStorePageSection_showProductViewControllerWithItem___block_invoke_2;
      v20[3] = &unk_2781FB4C8;
      v21 = v12;
      v16 = v12;
      [v16 loadProductWithParameters:v15 completionBlock:v20];
      [*(a1 + 40) presentViewController:v16 animated:1 completion:0];
    }
  }
}

uint64_t __58__SKUIStorePageSection_showProductViewControllerWithItem___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)d relativeSectionIndex:(int64_t)index
{
  numberOfCells = [(SKUIStorePageSection *)self numberOfCells];
  if (numberOfCells < 1)
  {
    v7 = 0;
  }

  else
  {
    if (numberOfCells - 1 < index)
    {
      index = numberOfCells - 1;
    }

    v7 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  }

  return v7;
}

- (int64_t)updateWithContext:(id)context pageComponent:(id)component
{
  contextCopy = context;
  componentCopy = component;
  viewElement = [(SKUIPageComponent *)componentCopy viewElement];
  if ([viewElement updateType])
  {
    v9 = 0;
  }

  else
  {
    [contextCopy activePageWidth];
    v11 = v10;
    context = [(SKUIStorePageSection *)self context];
    [context activePageWidth];
    v14 = vabdd_f64(v11, v13);

    if (v14 > 0.00000011920929)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  [(SKUIStorePageSection *)self _setContext:contextCopy];
  component = self->_component;
  self->_component = componentCopy;

  v16 = [(SKUIStorePageSection *)self applyUpdateType:v9];
  return v16;
}

- (void)productPageOverlayDidDismiss:(id)dismiss
{
  context = [(SKUIStorePageSection *)self context];
  parentViewController = [context parentViewController];
  [parentViewController _pageSectionDidDismissOverlayController:self->_overlayController];

  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  overlayController = self->_overlayController;
  self->_overlayController = 0;
}

- (void)_setContext:(id)context
{
  contextCopy = context;
  context = self->_context;
  p_context = &self->_context;
  if (context != contextCopy)
  {
    v8 = contextCopy;
    objc_storeStrong(p_context, context);
    contextCopy = v8;
  }
}

- (id)_clickEventWithElementName:(id)name index:(int64_t)index fieldData:(id)data
{
  v21[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dataCopy = data;
  context = [(SKUIStorePageSection *)self context];
  metricsController = [context metricsController];
  if ([metricsController canRecordEventWithType:*MEMORY[0x277D6A478]])
  {
    v12 = objc_alloc_init(MEMORY[0x277D69B68]);
    [v12 setTargetType:nameCopy];
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    v14 = [metricsController locationWithPageComponent:pageComponent];

    v15 = [metricsController locationWithPosition:index type:nameCopy fieldData:dataCopy];
    v16 = v15;
    if (v14 && v15)
    {
      v21[0] = v15;
      v21[1] = v14;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      [v12 setLocationWithEventLocations:v17];
    }

    parentViewController = [context parentViewController];
    _visibleMetricsImpressionsString = [parentViewController _visibleMetricsImpressionsString];
    [v12 setImpressions:_visibleMetricsImpressionsString];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)_itemPinningStyle
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  if (!viewElement)
  {
    goto LABEL_11;
  }

  pinStyle = [viewElement pinStyle];
  if (pinStyle > 2)
  {
    switch(pinStyle)
    {
      case 3:
        defaultItemPinningStyle = 2;
        goto LABEL_12;
      case 4:
        defaultItemPinningStyle = 3;
        goto LABEL_12;
      case 5:
        defaultItemPinningStyle = 4;
        goto LABEL_12;
    }

LABEL_11:
    defaultItemPinningStyle = [(SKUIStorePageSection *)self defaultItemPinningStyle];
    goto LABEL_12;
  }

  if (!pinStyle)
  {
    goto LABEL_11;
  }

  if (pinStyle == 1)
  {
    defaultItemPinningStyle = 0;
    goto LABEL_12;
  }

  if (pinStyle != 2)
  {
    goto LABEL_11;
  }

  defaultItemPinningStyle = 1;
LABEL_12:

  return defaultItemPinningStyle;
}

- (int64_t)_itemPinningGroup
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  pinGroup = [viewElement pinGroup];
  return pinGroup;
}

- (void)_recursivelyAddRelevantEntityProvidersForViewElement:(id)element toSet:(id)set
{
  elementCopy = element;
  setCopy = set;
  if (elementCopy)
  {
    explicitEntityProvider = [elementCopy explicitEntityProvider];
    if (explicitEntityProvider)
    {
      [setCopy addObject:explicitEntityProvider];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__SKUIStorePageSection__recursivelyAddRelevantEntityProvidersForViewElement_toSet___block_invoke;
    v9[3] = &unk_2781FA478;
    v9[4] = self;
    v10 = setCopy;
    [elementCopy enumerateChildrenUsingBlock:v9];
  }
}

- (void)_sendXEventWithDictionary:(id)dictionary completionBlock:(id)block
{
  dictionaryCopy = dictionary;
  blockCopy = block;
  context = [(SKUIStorePageSection *)self context];
  parentViewController = [context parentViewController];
  clientContext = [parentViewController clientContext];

  if (clientContext)
  {
    v11 = SKUIXEventSidepackDictionary(dictionaryCopy);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__SKUIStorePageSection__sendXEventWithDictionary_completionBlock___block_invoke;
    v12[3] = &unk_2781F85B8;
    v13 = blockCopy;
    [clientContext sendOnXEventWithDictionary:v11 completionBlock:v12];
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

void __66__SKUIStorePageSection__sendXEventWithDictionary_completionBlock___block_invoke(uint64_t a1, char a2)
{
  if (*(a1 + 32))
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __66__SKUIStorePageSection__sendXEventWithDictionary_completionBlock___block_invoke_2;
    v3[3] = &unk_2781FB5B0;
    v4 = *(a1 + 32);
    v5 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStorePageSection initWithPageComponent:]";
}

@end