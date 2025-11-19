@interface SKUIStorePageSection
- (BOOL)containsElementWithIndexBarEntryID:(id)a3;
- (BOOL)performDefaultActionForViewElement:(id)a3;
- (CGSize)cellSizeForIndexPath:(id)a3;
- (CGSize)preferredContentSize;
- (NSArray)indexPathsForPinningItems;
- (NSSet)relevantEntityProviders;
- (SKUIStorePageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (_NSRange)itemRangeForIndexPathRange:(SKUIIndexPathRange *)a3;
- (id)_clickEventWithElementName:(id)a3 index:(int64_t)a4 fieldData:(id)a5;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)clickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5;
- (id)clickEventWithLink:(id)a3 elementName:(id)a4 index:(int64_t)a5;
- (id)clickEventWithMedia:(id)a3 elementName:(id)a4 index:(int64_t)a5;
- (id)itemOfferClickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5;
- (id)performItemOfferActionForItem:(id)a3;
- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)a3 relativeSectionIndex:(int64_t)a4;
- (int64_t)_itemPinningGroup;
- (int64_t)_itemPinningStyle;
- (int64_t)applyUpdateType:(int64_t)a3;
- (int64_t)pinningTransitionStyleForItemAtIndexPath:(id)a3;
- (int64_t)updateWithContext:(id)a3 pageComponent:(id)a4;
- (void)_recursivelyAddRelevantEntityProvidersForViewElement:(id)a3 toSet:(id)a4;
- (void)_sendXEventWithDictionary:(id)a3 completionBlock:(id)a4;
- (void)_setContext:(id)a3;
- (void)collectionViewDidConfirmButtonElement:(id)a3 withClickInfo:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionViewDidLongPressItemAtIndexPath:(id)a3;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)playVideoForElement:(id)a3;
- (void)playVideoWithURL:(id)a3;
- (void)productPageOverlayDidDismiss:(id)a3;
- (void)reloadVisibleCellsWithReason:(int64_t)a3;
- (void)sendXEventWithItem:(id)a3 completionBlock:(id)a4;
- (void)sendXEventWithLink:(id)a3 completionBlock:(id)a4;
- (void)showPageWithLink:(id)a3;
- (void)showProductViewControllerWithItem:(id)a3;
@end

@implementation SKUIStorePageSection

- (SKUIStorePageSection)initWithPageComponent:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_component, a3);
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

- (int64_t)applyUpdateType:(int64_t)a3
{
  if (a3 != 2)
  {
    relevantEntityProviders = self->_relevantEntityProviders;
    self->_relevantEntityProviders = 0;

    self->_hasValidRelevantEntityProviders = 0;
  }

  v6 = [(SKUIStorePageSection *)self context];
  [(SKUIStorePageSection *)self willAppearInContext:v6];

  return a3;
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v3 = [(SKUIStorePageSection *)self context];
  v4 = [v3 colorScheme];

  v5 = [v4 backgroundColor];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v8 = v7;

  return v8;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)clickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5
{
  v8 = a3;
  v9 = [(SKUIStorePageSection *)self _clickEventWithElementName:a4 index:a5 fieldData:v8];
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v8, "itemIdentifier")];
    [v9 setTargetIdentifier:v10];

    v11 = [v8 productPageURLString];
    [v9 setTargetURL:v11];
  }

  return v9;
}

- (id)clickEventWithLink:(id)a3 elementName:(id)a4 index:(int64_t)a5
{
  v8 = a3;
  v9 = [(SKUIStorePageSection *)self _clickEventWithElementName:a4 index:a5 fieldData:v8];
  if (v9)
  {
    v10 = [v8 item];
    v11 = v10;
    if (v10)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v10, "itemIdentifier")];
      [v9 setTargetIdentifier:v12];

      v13 = [v11 productPageURLString];
      [v9 setTargetURL:v13];
    }

    else
    {
      v13 = [v8 URL];
      v14 = [v13 absoluteString];
      [v9 setTargetURL:v14];
    }
  }

  return v9;
}

- (id)clickEventWithMedia:(id)a3 elementName:(id)a4 index:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 mediaType])
  {
    v10 = [(SKUIStorePageSection *)self _clickEventWithElementName:v9 index:a5 fieldData:v8];
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = [v8 mediaIdentifier];
    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", v11];
      [v10 setTargetIdentifier:v12];
    }

    v13 = [v8 mediaURLString];
    [v10 setTargetURL:v13];
  }

  else
  {
    v13 = [v8 link];
    if (v13)
    {
      v10 = [(SKUIStorePageSection *)self clickEventWithLink:v13 elementName:v9 index:a5];
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_10:

  return v10;
}

- (void)collectionViewDidConfirmButtonElement:(id)a3 withClickInfo:(id)a4 forItemAtIndexPath:(id)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 itemIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = +[SKUIItemStateCenter defaultCenter];
    v11 = [v10 stateForItemWithIdentifier:v9];

    if (v11)
    {
      v12 = [v6 buyButtonDescriptor];
      v13 = [v12 canPerformLocalActionWithItemState:v11];

      if (v13)
      {
        v14 = [v11 state];
        if ((v14 & 2) != 0)
        {
          v15 = +[SKUIItemStateCenter defaultCenter];
          [v15 cancelDownloadForItemWithIdentifier:v9];
LABEL_14:

          v18 = 6;
          goto LABEL_10;
        }

        if ((v14 & 0x40) != 0)
        {
          v19 = [v6 personalizationLibraryItems];
          v15 = [v19 anyObject];

          v16 = +[SKUIItemStateCenter defaultCenter];
          [v16 performActionForLibraryItem:v15];
          goto LABEL_13;
        }

        if ((v14 & 0x24) == 4)
        {
          v15 = objc_alloc_init(MEMORY[0x277D69C68]);
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
          v20[0] = v16;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
          [v15 getLibraryItemsForITunesStoreItemIdentifiers:v17 completionBlock:&__block_literal_global_10];

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
  [v6 dispatchEventOfType:v18 canBubble:1 isCancelable:1 extraInfo:v7 completionBlock:0];
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

- (void)collectionViewDidLongPressItemAtIndexPath:(id)a3
{
  v3 = [(SKUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];

  [v4 dispatchEventOfType:3 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  v11 = a3;
  if ([(SKUIStorePageSection *)self fitsToHeight])
  {
    v4 = [(SKUIStorePageSectionContext *)self->_context collectionView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    [v4 contentInset];
    [v11 frame];
    [v11 setFrame:?];
    [v11 setSize:{v6, v8}];
  }

  v9 = [v11 indexPath];
  v10 = [(SKUIStorePageSection *)self backgroundColorForIndexPath:v9];
  [v11 setBackgroundColor:v10];
}

- (BOOL)containsElementWithIndexBarEntryID:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 firstDescendentWithIndexBarEntryID:v4];

  return v7 != 0;
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  v7 = [(SKUIStorePageSection *)self context:a3];
  v5 = [v7 collectionView];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  [v5 reloadSections:v6];
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

- (id)itemOfferClickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5
{
  v24[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(SKUIStorePageSection *)self context];
  v11 = [v10 metricsController];
  v12 = [v11 itemOfferClickEventWithItem:v8 locationPosition:a5];
  if (v12)
  {
    v13 = [v11 locationWithPosition:0 type:*MEMORY[0x277D6A4D0] fieldData:0];
    v14 = [(SKUIStorePageSection *)self pageComponent];
    v15 = [v11 locationWithPageComponent:v14];

    v16 = [v11 locationWithPosition:a5 type:v9 fieldData:v8];
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

    v21 = [v10 parentViewController];
    v22 = [v21 _visibleMetricsImpressionsString];
    [v12 setImpressions:v22];
  }

  return v12;
}

- (_NSRange)itemRangeForIndexPathRange:(SKUIIndexPathRange *)a3
{
  v5 = [(SKUIStorePageSection *)self sectionIndex];
  if (a3->var0 >= v5)
  {
    var1 = a3->var1;
  }

  else
  {
    var1 = 0;
  }

  if (a3->var2 == v5)
  {
    v7 = a3->var3 + 1;
  }

  else
  {
    v7 = [(SKUIStorePageSection *)self numberOfCells];
  }

  v8 = v7 - var1;
  v9 = var1;
  result.length = v8;
  result.location = v9;
  return result;
}

- (BOOL)performDefaultActionForViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  if (v5 == 14)
  {
LABEL_4:
    v6 = [v4 firstChildForElementType:152];
    goto LABEL_6;
  }

  if (v5 != 152)
  {
    if (v5 != 66)
    {
LABEL_9:
      LOBYTE(v8) = 0;
      goto LABEL_12;
    }

    goto LABEL_4;
  }

  v6 = v4;
LABEL_6:
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = [v6 isEnabled];
  if (v8)
  {
    [(SKUIStorePageSection *)self playVideoForElement:v7];
  }

  else
  {
    [v4 dispatchEvent:0x28280CC48 eventAttribute:0x28280CC68 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }

LABEL_12:
  return v8;
}

- (id)performItemOfferActionForItem:(id)a3
{
  v4 = a3;
  if (SKUIItemKindIsSoftwareKind([v4 itemKind]))
  {
    v5 = [(SKUIStorePageSection *)self context];
    v6 = [v5 parentViewController];
    v7 = [v6 clientContext];

    v8 = [v5 metricsController];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 performActionForItem:v4 clientContext:v7];
    }

    else
    {
      v11 = +[SKUIItemStateCenter defaultCenter];
      v10 = [v11 performActionForItem:v4 clientContext:v7];
    }
  }

  else
  {
    [(SKUIStorePageSection *)self showProductViewControllerWithItem:v4];
    v10 = 0;
  }

  return v10;
}

- (int64_t)pinningTransitionStyleForItemAtIndexPath:(id)a3
{
  v3 = [(SKUIStorePageSection *)self context];
  v4 = [v3 defaultPinningTransitionStyle];

  return v4;
}

- (void)playVideoForElement:(id)a3
{
  v4 = a3;
  v5 = [v4 assets];
  v6 = [v5 copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SKUIStorePageSection_playVideoForElement___block_invoke;
  v8[3] = &unk_2781FB538;
  v9 = v4;
  v10 = self;
  v7 = v4;
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

- (void)playVideoWithURL:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v10 = [[SKUIPlayableAsset alloc] initWithContentURL:v4];

    v5 = [(SKUIStorePageSection *)self context];
    v6 = [v5 clientContext];
    v7 = SKUIVideoPreviewPlayPlayableAsset(v10, v6);

    if (v7)
    {
      v8 = [(SKUIStorePageSection *)self context];
      v9 = [v8 parentViewController];

      [v9 presentViewController:v7 animated:1 completion:0];
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
    v3 = [(SKUIStorePageSection *)self pageComponent];
    v4 = [v3 viewElement];

    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
      [(SKUIStorePageSection *)self _recursivelyAddRelevantEntityProvidersForViewElement:v4 toSet:v5];
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

- (void)reloadVisibleCellsWithReason:(int64_t)a3
{
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 indexPathsForVisibleItems];
  v8 = [(SKUIStorePageSection *)self sectionIndex];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SKUIStorePageSection_reloadVisibleCellsWithReason___block_invoke;
  v9[3] = &unk_2781FB560;
  v9[4] = self;
  v9[5] = v8;
  v9[6] = a3;
  [v7 enumerateObjectsUsingBlock:v9];
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
  v2 = [(SKUIStorePageSection *)self pageComponent];
  v3 = [v2 viewElement];

  if (v3)
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

- (void)sendXEventWithItem:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 lookupDictionary];
  [(SKUIStorePageSection *)self _sendXEventWithDictionary:v7 completionBlock:v6];
}

- (void)sendXEventWithLink:(id)a3 completionBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 item];
  if (v7)
  {
    [(SKUIStorePageSection *)self sendXEventWithItem:v7 completionBlock:v6];
  }

  else
  {
    v8 = [v9 linkDictionary];
    [(SKUIStorePageSection *)self _sendXEventWithDictionary:v8 completionBlock:v6];
  }
}

- (void)showPageWithLink:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [v4 URL];
  v7 = v6;
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    v8 = [(SKUIStorePageSection *)self context];
    v9 = [v8 parentViewController];

    v10 = [v9 delegate];
    if (objc_opt_respondsToSelector())
    {
      if ([v10 sectionsViewController:v9 showStorePageForURL:v7])
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = [v4 targetString];
      v12 = [v11 isEqualToString:@"external"];

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
    v15 = [(SKUIURL *)v14 actionString];

    if (v15)
    {
      v16 = [MEMORY[0x277D75128] sharedApplication];
      v17 = [v16 delegate];

      if (objc_opt_respondsToSelector())
      {
        v18 = [MEMORY[0x277D75128] sharedApplication];
        [v17 application:v18 openURL:v7 sourceApplication:0 annotation:MEMORY[0x277CBEC10]];
      }

      else
      {
        v19 = SKUIMobileCoreServicesFramework();
        v18 = [SKUIWeakLinkedClassForString(&cfstr_Lsapplicationw.isa v19)];
        [v18 openSensitiveURL:v7 withOptions:0];
      }
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __41__SKUIStorePageSection_showPageWithLink___block_invoke;
      v20[3] = &unk_2781FB588;
      v21 = v9;
      v22 = v4;
      v23 = v7;
      [(SKUIStorePageSection *)self sendXEventWithLink:v22 completionBlock:v20];
    }

    goto LABEL_15;
  }

  [(SKUIStorePageSection *)self showProductViewControllerWithItem:v5];
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

- (void)showProductViewControllerWithItem:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 parentViewController];

  v7 = [v6 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 sectionsViewController:v6 showProductPageForItem:v4] & 1) == 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__SKUIStorePageSection_showProductViewControllerWithItem___block_invoke;
    v8[3] = &unk_2781FB588;
    v9 = v4;
    v10 = v6;
    v11 = self;
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

- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)a3 relativeSectionIndex:(int64_t)a4
{
  v6 = [(SKUIStorePageSection *)self numberOfCells];
  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    if (v6 - 1 < a4)
    {
      a4 = v6 - 1;
    }

    v7 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  }

  return v7;
}

- (int64_t)updateWithContext:(id)a3 pageComponent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIPageComponent *)v7 viewElement];
  if ([v8 updateType])
  {
    v9 = 0;
  }

  else
  {
    [v6 activePageWidth];
    v11 = v10;
    v12 = [(SKUIStorePageSection *)self context];
    [v12 activePageWidth];
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

  [(SKUIStorePageSection *)self _setContext:v6];
  component = self->_component;
  self->_component = v7;

  v16 = [(SKUIStorePageSection *)self applyUpdateType:v9];
  return v16;
}

- (void)productPageOverlayDidDismiss:(id)a3
{
  v4 = [(SKUIStorePageSection *)self context];
  v5 = [v4 parentViewController];
  [v5 _pageSectionDidDismissOverlayController:self->_overlayController];

  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  overlayController = self->_overlayController;
  self->_overlayController = 0;
}

- (void)_setContext:(id)a3
{
  v5 = a3;
  context = self->_context;
  p_context = &self->_context;
  if (context != v5)
  {
    v8 = v5;
    objc_storeStrong(p_context, a3);
    v5 = v8;
  }
}

- (id)_clickEventWithElementName:(id)a3 index:(int64_t)a4 fieldData:(id)a5
{
  v21[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(SKUIStorePageSection *)self context];
  v11 = [v10 metricsController];
  if ([v11 canRecordEventWithType:*MEMORY[0x277D6A478]])
  {
    v12 = objc_alloc_init(MEMORY[0x277D69B68]);
    [v12 setTargetType:v8];
    v13 = [(SKUIStorePageSection *)self pageComponent];
    v14 = [v11 locationWithPageComponent:v13];

    v15 = [v11 locationWithPosition:a4 type:v8 fieldData:v9];
    v16 = v15;
    if (v14 && v15)
    {
      v21[0] = v15;
      v21[1] = v14;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      [v12 setLocationWithEventLocations:v17];
    }

    v18 = [v10 parentViewController];
    v19 = [v18 _visibleMetricsImpressionsString];
    [v12 setImpressions:v19];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)_itemPinningStyle
{
  v3 = [(SKUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];

  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = [v4 pinStyle];
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = 2;
        goto LABEL_12;
      case 4:
        v6 = 3;
        goto LABEL_12;
      case 5:
        v6 = 4;
        goto LABEL_12;
    }

LABEL_11:
    v6 = [(SKUIStorePageSection *)self defaultItemPinningStyle];
    goto LABEL_12;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  if (v5 == 1)
  {
    v6 = 0;
    goto LABEL_12;
  }

  if (v5 != 2)
  {
    goto LABEL_11;
  }

  v6 = 1;
LABEL_12:

  return v6;
}

- (int64_t)_itemPinningGroup
{
  v2 = [(SKUIStorePageSection *)self pageComponent];
  v3 = [v2 viewElement];

  v4 = [v3 pinGroup];
  return v4;
}

- (void)_recursivelyAddRelevantEntityProvidersForViewElement:(id)a3 toSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 explicitEntityProvider];
    if (v8)
    {
      [v7 addObject:v8];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__SKUIStorePageSection__recursivelyAddRelevantEntityProvidersForViewElement_toSet___block_invoke;
    v9[3] = &unk_2781FA478;
    v9[4] = self;
    v10 = v7;
    [v6 enumerateChildrenUsingBlock:v9];
  }
}

- (void)_sendXEventWithDictionary:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIStorePageSection *)self context];
  v9 = [v8 parentViewController];
  v10 = [v9 clientContext];

  if (v10)
  {
    v11 = SKUIXEventSidepackDictionary(v6);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__SKUIStorePageSection__sendXEventWithDictionary_completionBlock___block_invoke;
    v12[3] = &unk_2781F85B8;
    v13 = v7;
    [v10 sendOnXEventWithDictionary:v11 completionBlock:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
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