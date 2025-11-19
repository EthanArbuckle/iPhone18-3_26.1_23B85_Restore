@interface SKUIRowSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUILockupStyle)_lockupStyleForComponent:(SEL)a3 columnIndex:(id)a4;
- (SKUIRowSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)_edgeInsetsForColumnIndex:(int64_t)a3;
- (double)_cellContentHeightForRowWidth:(double)a3;
- (double)_columnWidthForColumnIndex:(int64_t)a3 rowWidth:(double)a4;
- (double)_heightForArtwork:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5;
- (double)_heightForComponent:(id)a3 columnIndex:(double)a4 rowWidth:(double)a5;
- (double)_heightForCountdownComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5;
- (double)_heightForEditorialComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5;
- (double)_heightForGalleryComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5;
- (double)_heightForLockupComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5;
- (double)_heightForMediaComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5;
- (double)_interColumnSpacing;
- (id)_columnViews;
- (id)_editorialLayoutForEditorial:(id)a3 columnIndex:(int64_t)a4;
- (id)_editorialLayoutForLockup:(id)a3 columnIndex:(int64_t)a4;
- (id)_imageConsumerWithItem:(id)a3 lockupSize:(int64_t)a4;
- (id)_lockupImageForComponent:(id)a3;
- (id)_lockupPlaceholderForComponent:(id)a3;
- (id)_missingItemLoader;
- (id)_newSizeToFitArtworkRequestWithArtwork:(id)a3 columnIndex:(int64_t)a4;
- (id)_newViewWithMediaComponent:(id)a3;
- (id)_overlaySourceCell;
- (id)_popSourceViewForOverlayController:(id)a3;
- (id)_viewControllerForCountdownComponent:(id)a3;
- (id)_viewControllerForGalleryComponent:(id)a3;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (id)clickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5;
- (id)itemOfferClickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5;
- (int64_t)numberOfCells;
- (void)_enumerateLockupsWithBlock:(id)a3;
- (void)_expandEditorialComponent:(id)a3 columnIndex:(int64_t)a4;
- (void)_loadImagesForGalleryComponent:(id)a3 columnIndex:(int64_t)a4;
- (void)_reloadEditorialCell:(id)a3 forComponent:(id)a4 columnIndex:(int64_t)a5;
- (void)_reloadEditorialLockupCell:(id)a3 forComponent:(id)a4 columnIndex:(int64_t)a5;
- (void)_reloadLockupCell:(id)a3 forComponent:(id)a4 columnIndex:(int64_t)a5;
- (void)_reloadView:(id)a3 forMediaComponent:(id)a4 columnIndex:(int64_t)a5;
- (void)_selectGalleryComponent:(id)a3 columnIndex:(int64_t)a4;
- (void)_selectLockupComponent:(id)a3 columnIndex:(int64_t)a4;
- (void)_selectMediaComponent:(id)a3 columnIndex:(int64_t)a4;
- (void)_setPositionForClickEvent:(id)a3 elementIndex:(int64_t)a4;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionViewDidConfirmItemOfferAtIndexPath:(id)a3;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)invalidateCachedLayoutInformation;
- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4;
- (void)itemStateCenterRestrictionsChanged:(id)a3;
- (void)mediaView:(id)a3 playbackStateDidChange:(int64_t)a4;
- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)productPageOverlayDidDismiss:(id)a3;
- (void)willAppearInContext:(id)a3;
- (void)willHideInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUIRowSection

- (SKUIRowSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRowSection initWithPageComponent:];
  }

  v10.receiver = self;
  v10.super_class = SKUIRowSection;
  v5 = [(SKUIStorePageSection *)&v10 initWithPageComponent:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    componentArtworkRequestIDs = v5->_componentArtworkRequestIDs;
    v5->_componentArtworkRequestIDs = v6;

    v8 = [MEMORY[0x277D75418] currentDevice];
    v5->_isPad = [v8 userInterfaceIdiom] == 1;
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[SKUIItemStateCenter defaultCenter];
  [v3 removeObserver:self];

  [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  v4.receiver = self;
  v4.super_class = SKUIRowSection;
  [(SKUIStorePageSection *)&v4 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v20 = a4;
  v6 = a3;
  v7 = [(SKUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];
  [v20 addItemViewElement:v8];

  v9 = [(SKUIStorePageSection *)self pageComponent];
  v10 = [v9 childComponents];
  v11 = [v6 item];

  if (v11 < [v10 count])
  {
    v12 = [v10 objectAtIndex:v11];
    v13 = [v12 componentType];
    switch(v13)
    {
      case 10:
        v16 = [v12 mediaIdentifier];
        v18 = [v12 viewElement];
        break;
      case 9:
        v19 = [v12 item];
        v16 = [v19 itemIdentifier];

        v18 = 0;
        break;
      case 7:
        v14 = [(NSMapTable *)self->_galleryViewControllers objectForKey:v12];
        v15 = [v14 selectedMediaComponent];
        v16 = [v15 mediaIdentifier];

        v17 = [v14 selectedMediaComponent];
        v18 = [v17 viewElement];

        break;
      default:
        v18 = 0;
        v16 = 0;
        break;
    }

    [v20 addItemIdentifier:v16];
    [v20 addItemViewElement:v18];
  }
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 backgroundColor];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SKUIRowSection;
    v7 = [(SKUIStorePageSection *)&v10 backgroundColorForIndexPath:v4];
  }

  v8 = v7;

  return v8;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v4 item];
  v8 = [(SKUIStorePageSection *)self pageComponent];
  v9 = [v8 childComponents];

  if (v7 >= [v9 count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 objectAtIndex:v7];
  }

  v11 = [v10 componentType];
  if (v11 == 5)
  {
    v13 = [v6 dequeueReusableCellWithReuseIdentifier:0x282808E48 forIndexPath:v4];
    [(SKUIRowSection *)self _reloadEditorialCell:v13 forComponent:v10 columnIndex:v7];
  }

  else if (v11 == 9)
  {
    v12 = [v10 editorial];

    if (v12)
    {
      v13 = [v6 dequeueReusableCellWithReuseIdentifier:0x2828123C8 forIndexPath:v4];
      [(SKUIRowSection *)self _reloadEditorialLockupCell:v13 forComponent:v10 columnIndex:v7];
    }

    else
    {
      v13 = [v6 dequeueReusableCellWithReuseIdentifier:0x2828083E8 forIndexPath:v4];
      [(SKUIRowSection *)self _reloadLockupCell:v13 forComponent:v10 columnIndex:v7];
    }
  }

  else
  {
    v13 = [v6 dequeueReusableCellWithReuseIdentifier:@"SKUIRowSectionMiscReuseIdentifer" forIndexPath:v4];
    if (v10)
    {
      v14 = [(SKUIRowSection *)self _columnViews];
      v15 = [v14 objectForKey:v10];
    }

    else
    {
      v15 = 0;
    }

    [v13 setContentChildView:v15];
    [(SKUIRowSection *)self _edgeInsetsForColumnIndex:v7];
    [v13 setContentInsets:?];
    v16 = [v10 componentType];
    if (v16 == 10)
    {
      [(SKUIRowSection *)self _reloadView:v15 forMediaComponent:v10 columnIndex:v7];
    }

    else if (v16 == 7)
    {
      [(SKUIRowSection *)self _loadImagesForGalleryComponent:v10 columnIndex:v7];
    }
  }

  return v13;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v11 = [(SKUIStorePageSection *)self pageComponent];
  v12 = v11;
  if (self->_isPad || ![v11 shouldAutoFlow])
  {
    if (v8 <= v10)
    {
      v18 = 184;
    }

    else
    {
      v18 = 152;
    }

    v17 = *(&self->super.super.isa + v18);
    if (v17 < 0.00000011920929)
    {
      [(SKUIRowSection *)self _cellContentHeightForRowWidth:v8];
      v17 = *&v19;
      *(&self->super.super.isa + v18) = v19;
    }
  }

  else
  {
    v13 = [v4 item];
    v14 = [v12 childComponents];
    v15 = [v14 objectAtIndex:v13];

    [(SKUIRowSection *)self _heightForComponent:v15 columnIndex:v13 rowWidth:v8];
    v17 = v16;
  }

  v20 = [v4 item];
  [(SKUIRowSection *)self _columnWidthForColumnIndex:v20 rowWidth:v8];
  v22 = v21;
  [(SKUIRowSection *)self _edgeInsetsForColumnIndex:v20];
  v25 = v17 + v24 + v23;
  v28 = v22 + v26 + v27;

  v29 = v28;
  v30 = v25;
  result.height = v30;
  result.width = v29;
  return result;
}

- (id)clickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = SKUIRowSection;
  v7 = [(SKUIStorePageSection *)&v9 clickEventWithItem:a3 elementName:a4 index:?];
  [(SKUIRowSection *)self _setPositionForClickEvent:v7 elementIndex:a5];

  return v7;
}

- (void)collectionViewDidConfirmItemOfferAtIndexPath:(id)a3
{
  v16 = a3;
  v4 = [v16 item];
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 childComponents];
  v7 = [v6 objectAtIndex:v4];

  if ([v7 componentType] == 9)
  {
    v8 = [(SKUIStorePageSection *)self context];
    v9 = [v7 item];
    v10 = [(SKUIRowSection *)self itemOfferClickEventWithItem:v9 elementName:@"Column" index:v4];
    if (v10)
    {
      v11 = [v8 metricsController];
      [v11 recordEvent:v10];
    }

    v12 = [v8 collectionView];
    v13 = [v12 cellForItemAtIndexPath:v16];

    v14 = [(SKUIStorePageSection *)self performItemOfferActionForItem:v9];
    v15 = [v13 layout];
    [v15 setItemState:v14 animated:1];
  }
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(SKUIStorePageSection *)self pageComponent];
  v7 = [v6 childComponents];
  v8 = [v7 objectAtIndex:v5];

  v9 = [v8 componentType];
  if (v9 > 8)
  {
    if (v9 == 9)
    {
      [(SKUIRowSection *)self _selectLockupComponent:v8 columnIndex:v5];
    }

    else if (v9 == 10)
    {
      [(SKUIRowSection *)self _selectMediaComponent:v8 columnIndex:v5];
    }
  }

  else if (v9 == 5)
  {
    [(SKUIRowSection *)self _expandEditorialComponent:v8 columnIndex:v5];
  }

  else if (v9 == 7)
  {
    [(SKUIRowSection *)self _selectGalleryComponent:v8 columnIndex:v5];
  }

  v10.receiver = self;
  v10.super_class = SKUIRowSection;
  [(SKUIStorePageSection *)&v10 collectionViewDidSelectItemAtIndexPath:v4];
}

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 indexPath];
  v6 = [(SKUIRowSection *)self backgroundColorForIndexPath:v5];
  [v4 setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SKUIRowSection;
  [(SKUIStorePageSection *)&v7 collectionViewWillApplyLayoutAttributes:v4];
}

- (void)invalidateCachedLayoutInformation
{
  self->_landscapeCellContentHeight = 0.0;
  self->_portraitCellContentHeight = 0.0;
  v2.receiver = self;
  v2.super_class = SKUIRowSection;
  [(SKUIStorePageSection *)&v2 invalidateCachedLayoutInformation];
}

- (id)itemOfferClickEventWithItem:(id)a3 elementName:(id)a4 index:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = SKUIRowSection;
  v7 = [(SKUIStorePageSection *)&v9 itemOfferClickEventWithItem:a3 elementName:a4 index:?];
  [(SKUIRowSection *)self _setPositionForClickEvent:v7 elementIndex:a5];

  return v7;
}

- (int64_t)numberOfCells
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(SKUIStorePageSection *)self pageComponent];
  v3 = [v2 columnWidths];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v12 + 1) + 8 * i) integerValue];
      }

      v7 += v5;
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v10 = [v2 numberOfColumns];

  return v7 - v6 + v10;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v6 = [(SKUIStorePageSection *)self pageComponent];
  if ([v6 isMissingItemData])
  {
    v5 = [(SKUIRowSection *)self _missingItemLoader];
    [v5 loadItemsForPageComponent:v6 startIndex:0 reason:a3];
  }
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUIRowSectionMiscReuseIdentifer"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282808E48];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828083E8];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828123C8];
  v6 = [(SKUIStorePageSection *)self pageComponent];
  v7 = [v6 childComponents];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__SKUIRowSection_willAppearInContext___block_invoke;
  v13[3] = &unk_2781FBE80;
  v13[4] = self;
  [v7 enumerateObjectsUsingBlock:v13];
  v8 = [v4 parentViewController];
  v9 = [v8 clientContext];
  clientContext = self->_clientContext;
  self->_clientContext = v9;

  v11 = +[SKUIItemStateCenter defaultCenter];
  [v11 addObserver:self];

  v12.receiver = self;
  v12.super_class = SKUIRowSection;
  [(SKUIStorePageSection *)&v12 willAppearInContext:v4];
}

void __38__SKUIRowSection_willAppearInContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 componentType];
  if (v5 == 9)
  {
    v6 = [*(a1 + 32) _editorialLayoutForLockup:v8 columnIndex:a3];
  }

  else
  {
    if (v5 != 5)
    {
      goto LABEL_6;
    }

    v6 = [*(a1 + 32) _editorialLayoutForEditorial:v8 columnIndex:a3];
  }

  v7 = v6;
  [v6 enqueueLayoutRequests];

LABEL_6:
}

- (void)willHideInContext:(id)a3
{
  v4 = a3;
  v5 = +[SKUIItemStateCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SKUIRowSection;
  [(SKUIStorePageSection *)&v6 willHideInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(SKUIStorePageSection *)self context];
  v9 = [v8 collectionView];

  v10 = [(SKUIStorePageSection *)self sectionIndex];
  v11 = [(SKUIStorePageSection *)self pageComponent];
  v12 = [v11 childComponents];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SKUIRowSection_willTransitionToSize_withTransitionCoordinator___block_invoke;
  v15[3] = &unk_2781FBEA8;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = width > height;
  v13 = v9;
  [v12 enumerateObjectsUsingBlock:v15];
  v14.receiver = self;
  v14.super_class = SKUIRowSection;
  [(SKUIStorePageSection *)&v14 willTransitionToSize:v7 withTransitionCoordinator:width, height];
}

void __65__SKUIRowSection_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [v10 componentType];
  if (v5 == 9)
  {
    v6 = [*(a1 + 32) _editorialLayoutForLockup:v10 columnIndex:a3];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 48)];
      v8 = [*(a1 + 40) cellForItemAtIndexPath:v7];
      v9 = [v8 layout];
      [v9 applyEditorialLayout:v6 withOrientation:*(a1 + 56)];
      goto LABEL_7;
    }
  }

  else
  {
    if (v5 != 5)
    {
      goto LABEL_9;
    }

    v6 = [*(a1 + 32) _editorialLayoutForEditorial:v10 columnIndex:a3];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 48)];
      v8 = [*(a1 + 40) cellForItemAtIndexPath:v7];
      v9 = [v8 layout];
      [v9 applyEditorialLayout:v6 withOrientation:*(a1 + 56) expanded:{objc_msgSend(*(*(a1 + 32) + 120), "containsIndex:", a3)}];
LABEL_7:
    }
  }

LABEL_9:
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKUIRowSection *)self _columnViews];
  v9 = [v7 requestIdentifier];

  v10 = [(SKUIStorePageSection *)self pageComponent];
  v11 = [v10 childComponents];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__SKUIRowSection_artworkRequest_didLoadImage___block_invoke;
  v14[3] = &unk_2781FBED0;
  v14[4] = self;
  v15 = v6;
  v16 = v8;
  v17 = v9;
  v12 = v8;
  v13 = v6;
  [v11 enumerateObjectsUsingBlock:v14];
}

void __46__SKUIRowSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [*(*(a1 + 32) + 104) objectForKey:?];
  if ([v7 unsignedIntegerValue] == *(a1 + 56))
  {
    v8 = [v14 componentType];
    if (v8 == 10)
    {
      v10 = [*(a1 + 48) objectForKey:v14];
      [v10 setThumbnailImage:*(a1 + 40)];
    }

    else
    {
      if (v8 != 9)
      {
LABEL_7:
        *a4 = 1;
        goto LABEL_8;
      }

      v9 = [*(a1 + 32) context];
      v10 = [v9 collectionView];

      v11 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:{objc_msgSend(*(a1 + 32), "sectionIndex")}];
      v12 = [v10 cellForItemAtIndexPath:v11];

      v13 = [v12 layout];
      [v13 setIconImage:*(a1 + 40)];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)mediaView:(id)a3 playbackStateDidChange:(int64_t)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = self->_columnViews;
  v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      v13 = [(NSMapTable *)self->_columnViews objectForKey:v12, v31];
      if ([v6 isDescendantOfView:v13])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMapTable *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }
    }

    v14 = [(SKUIStorePageSection *)self pageComponent];
    v15 = [v14 childComponents];
    v16 = [v15 indexOfObjectIdenticalTo:v12];

    v17 = [v12 componentType];
    if (v17 == 10)
    {
      v19 = v12;
    }

    else
    {
      if (v17 != 7)
      {
        v19 = v7;
LABEL_23:

        v7 = v19;
        goto LABEL_24;
      }

      v18 = [(NSMapTable *)self->_galleryViewControllers objectForKey:v12];
      v19 = [v18 selectedMediaComponent];
    }

    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = [(SKUIStorePageSection *)self context];
    v13 = [v20 metricsController];

    if ([v13 canRecordEventWithType:*MEMORY[0x277D6A488]])
    {
      v21 = objc_alloc_init(MEMORY[0x277D69BA8]);
      v22 = SKUIMetricsMediaEventTypeForPlaybackState(a4);
      [v21 setMediaEventType:v22];

      v23 = [(SKUIStorePageSection *)self pageComponent];
      v24 = [v13 locationWithPageComponent:v23];

      v25 = [v13 locationWithPosition:v16 type:@"Column" fieldData:0];
      v26 = v25;
      if (v24 && v25)
      {
        v35[0] = v25;
        v35[1] = v24;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
        [v21 setLocationWithEventLocations:v27];
      }

      v28 = [(NSMapTable *)v19 mediaIdentifier];
      if (v28)
      {
        v29 = [MEMORY[0x277CCABB0] numberWithLongLong:v28];
        [v21 setItemIdentifier:v29];
      }

      v30 = [(NSMapTable *)v19 mediaURLString];
      [v21 setMediaURL:v30];

      [v13 recordEvent:v21];
    }

    goto LABEL_23;
  }

LABEL_24:

LABEL_25:
}

- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 itemIdentifier];
        [v6 setObject:v12 forKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__SKUIRowSection_itemStateCenter_itemStatesChanged___block_invoke;
  v15[3] = &unk_2781F80C8;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __52__SKUIRowSection_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SKUIRowSection_itemStateCenter_itemStatesChanged___block_invoke_2;
  v6[3] = &unk_2781FBEF8;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _enumerateLockupsWithBlock:v6];
}

void __52__SKUIRowSection_itemStateCenter_itemStatesChanged___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v12 = [v5 cellForItemAtIndexPath:a3];
  v7 = [v6 item];

  if (v12)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v7, "itemIdentifier")}];
    v10 = [*(a1 + 40) objectForKey:v9];
    if (v10)
    {
      v11 = [v12 layout];
      [v11 setItemState:v10 animated:1];
    }
  }
}

- (void)itemStateCenterRestrictionsChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SKUIRowSection_itemStateCenterRestrictionsChanged___block_invoke;
  v6[3] = &unk_2781F80C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __53__SKUIRowSection_itemStateCenterRestrictionsChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SKUIRowSection_itemStateCenterRestrictionsChanged___block_invoke_2;
  v6[3] = &unk_2781FBEF8;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _enumerateLockupsWithBlock:v6];
}

void __53__SKUIRowSection_itemStateCenterRestrictionsChanged___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v5 cellForItemAtIndexPath:a3];
  v7 = [v10 layout];
  v8 = *(a1 + 40);
  v9 = [v6 item];

  [v7 setRestricted:{objc_msgSend(v8, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(v9, "parentalControlsRank"))}];
}

- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5
{
  v6 = a4;
  if ([v6 count])
  {
    v7 = [(SKUIStorePageSection *)self pageComponent];
    v8 = [v7 _updateWithMissingItems:v6];
    if ([v8 count])
    {
      v9 = [v7 childComponents];
      v10 = [(SKUIStorePageSection *)self context];
      v11 = [v10 collectionView];

      v12 = [(SKUIStorePageSection *)self sectionIndex];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __72__SKUIRowSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
      v15[3] = &unk_2781FBF20;
      v16 = v11;
      v17 = v9;
      v18 = self;
      v19 = v12;
      v13 = v9;
      v14 = v11;
      [v8 enumerateIndexesUsingBlock:v15];
    }
  }
}

void __72__SKUIRowSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:*(a1 + 56)];
  v9 = [v4 cellForItemAtIndexPath:v5];

  if (v9)
  {
    v6 = [*(a1 + 40) objectAtIndex:a2];
    v7 = [v6 editorial];

    v8 = *(a1 + 48);
    if (v7)
    {
      [v8 _reloadEditorialLockupCell:v9 forComponent:v6 columnIndex:a2];
    }

    else
    {
      [v8 _reloadLockupCell:v9 forComponent:v6 columnIndex:a2];
    }
  }
}

- (void)productPageOverlayDidDismiss:(id)a3
{
  v9 = [(SKUIRowSection *)self _overlaySourceCell];
  v4 = [v9 layout];
  [v4 setIconImageHidden:0];

  overlaySourceComponent = self->_overlaySourceComponent;
  self->_overlaySourceComponent = 0;

  v6 = [(SKUIStorePageSection *)self context];
  v7 = [v6 parentViewController];
  [v7 _pageSectionDidDismissOverlayController:self->_overlayController];

  [(SKUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  overlayController = self->_overlayController;
  self->_overlayController = 0;
}

- (double)_cellContentHeightForRowWidth:(double)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 childComponents];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SKUIRowSection__cellContentHeightForRowWidth___block_invoke;
  v9[3] = &unk_2781FBF48;
  *&v9[6] = a3;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __48__SKUIRowSection__cellContentHeightForRowWidth___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = [*(a1 + 32) _heightForComponent:a2 columnIndex:a3 rowWidth:*(a1 + 48)];
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) >= v5)
  {
    v5 = *(v6 + 24);
  }

  *(v6 + 24) = v5;
  return result;
}

- (id)_columnViews
{
  columnViews = self->_columnViews;
  if (!columnViews)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB00]);
    v5 = self->_columnViews;
    self->_columnViews = v4;

    v6 = [(SKUIStorePageSection *)self pageComponent];
    v7 = [v6 childComponents];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__SKUIRowSection__columnViews__block_invoke;
    v9[3] = &unk_2781FBE80;
    v9[4] = self;
    [v7 enumerateObjectsUsingBlock:v9];

    columnViews = self->_columnViews;
  }

  return columnViews;
}

void __30__SKUIRowSection__columnViews__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 componentType];
  if (v3 == 10)
  {
    v6 = [*(a1 + 32) _newViewWithMediaComponent:v7];
    if (v6)
    {
LABEL_7:
      [*(*(a1 + 32) + 96) setObject:v6 forKey:v7];
    }
  }

  else
  {
    if (v3 == 7)
    {
      v4 = [*(a1 + 32) _viewControllerForGalleryComponent:v7];
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_8;
      }

      v4 = [*(a1 + 32) _viewControllerForCountdownComponent:v7];
    }

    v5 = v4;
    v6 = [v4 view];

    if (v6)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (double)_columnWidthForColumnIndex:(int64_t)a3 rowWidth:(double)a4
{
  v7 = [(SKUIStorePageSection *)self pageComponent];
  v8 = v7;
  if (self->_isPad || ![v7 shouldAutoFlow])
  {
    v10 = [v8 columnWidths];
    v11 = [v8 numberOfColumns];
    [(SKUIRowSection *)self _interColumnSpacing];
    v13 = v12;
    *&v12 = (a4 + -30.0 - v12 * (v11 - 1)) / v11;
    v14 = floorf(*&v12);
    if (a3 < 1)
    {
      v16 = 15.0;
    }

    else
    {
      v15 = 0;
      v16 = 15.0;
      do
      {
        if ([v10 count] <= a3)
        {
          v18 = 1;
        }

        else
        {
          v17 = [v10 objectAtIndex:v15];
          v18 = [v17 integerValue];
        }

        v16 = v13 + v16 + v13 * (v18 - 1) + v18 * v14;
        ++v15;
      }

      while (a3 != v15);
    }

    if ([v10 count] <= a3)
    {
      v20 = 1;
    }

    else
    {
      v19 = [v10 objectAtIndex:a3];
      v20 = [v19 integerValue];
    }

    if (v11 - v20 == a3)
    {
      v9 = a4 + -15.0 - v16;
    }

    else
    {
      v9 = v13 * (v20 - 1) + v20 * v14;
    }
  }

  else
  {
    v9 = a4 + -30.0;
  }

  return v9;
}

- (UIEdgeInsets)_edgeInsetsForColumnIndex:(int64_t)a3
{
  v5 = [(SKUIStorePageSection *)self pageComponent];
  [(SKUIRowSection *)self _interColumnSpacing];
  v7 = v6;
  v8 = [v5 numberOfColumns];
  if (self->_isPad || (v9 = 15.0, v10 = 15.0, ([v5 shouldAutoFlow] & 1) == 0))
  {
    v11 = v7 * 0.5;
    v12 = floorf(v11);
    if (a3)
    {
      v10 = v12;
    }

    else
    {
      v10 = 15.0;
    }

    if (v8 - 1 == a3)
    {
      v9 = 15.0;
    }

    else
    {
      v9 = v12;
    }
  }

  v13 = 15.0;
  v14 = 15.0;
  v15 = v10;
  v16 = v9;
  result.right = v16;
  result.bottom = v14;
  result.left = v15;
  result.top = v13;
  return result;
}

- (id)_editorialLayoutForEditorial:(id)a3 columnIndex:(int64_t)a4
{
  v6 = a3;
  editorialLayouts = self->_editorialLayouts;
  if (!editorialLayouts)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    v9 = self->_editorialLayouts;
    self->_editorialLayouts = v8;

    editorialLayouts = self->_editorialLayouts;
  }

  v10 = [(NSMapTable *)editorialLayouts objectForKey:v6];
  if (!v10)
  {
    v11 = [(SKUIStorePageSection *)self context];
    v12 = [SKUIEditorialLayout alloc];
    v13 = [(SKUIStorePageSection *)self context];
    v14 = [v13 textLayoutCache];
    v10 = [(SKUIEditorialLayout *)v12 initWithEditorial:v6 layoutCache:v14];

    [v11 portraitPageWidth];
    [(SKUIRowSection *)self _columnWidthForColumnIndex:a4 rowWidth:?];
    [(SKUIEditorialLayout *)v10 setLayoutWidth:0 forOrientation:?];
    [v11 landscapePageWidth];
    [(SKUIRowSection *)self _columnWidthForColumnIndex:a4 rowWidth:?];
    [(SKUIEditorialLayout *)v10 setLayoutWidth:1 forOrientation:?];
    [(NSMapTable *)self->_editorialLayouts setObject:v10 forKey:v6];
  }

  return v10;
}

- (id)_editorialLayoutForLockup:(id)a3 columnIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 editorial];
  if (v7)
  {
    editorialLayouts = self->_editorialLayouts;
    if (!editorialLayouts)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v10 = self->_editorialLayouts;
      self->_editorialLayouts = v9;

      editorialLayouts = self->_editorialLayouts;
    }

    v11 = [(NSMapTable *)editorialLayouts objectForKey:v7];
    if (!v11)
    {
      v12 = [(SKUIStorePageSection *)self context];
      v13 = [SKUIEditorialLayout alloc];
      v14 = [(SKUIStorePageSection *)self context];
      v15 = [v14 textLayoutCache];
      v11 = [(SKUIEditorialLayout *)v13 initWithEditorial:v7 layoutCache:v15];

      v19 = 0uLL;
      v20 = 0;
      [(SKUIRowSection *)self _lockupStyleForComponent:v6 columnIndex:a4];
      [v12 portraitPageWidth];
      [(SKUIRowSection *)self _columnWidthForColumnIndex:a4 rowWidth:?];
      v17 = v19;
      v18 = v20;
      [SKUIEditorialLockupCellLayout editorialWidthForCellWidth:&v17 lockupStyle:?];
      [(SKUIEditorialLayout *)v11 setLayoutWidth:0 forOrientation:?];
      [v12 landscapePageWidth];
      [(SKUIRowSection *)self _columnWidthForColumnIndex:a4 rowWidth:?];
      v17 = v19;
      v18 = v20;
      [SKUIEditorialLockupCellLayout editorialWidthForCellWidth:&v17 lockupStyle:?];
      [(SKUIEditorialLayout *)v11 setLayoutWidth:1 forOrientation:?];
      [(NSMapTable *)self->_editorialLayouts setObject:v11 forKey:v7];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_enumerateLockupsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self sectionIndex];
  v6 = [(SKUIStorePageSection *)self pageComponent];
  v7 = [v6 childComponents];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SKUIRowSection__enumerateLockupsWithBlock___block_invoke;
  v9[3] = &unk_2781FBF70;
  v10 = v4;
  v11 = v5;
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __45__SKUIRowSection__enumerateLockupsWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([v6 componentType] == 9)
  {
    v5 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 40)];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_expandEditorialComponent:(id)a3 columnIndex:(int64_t)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SKUIStorePageSection *)self context];
  v8 = [v7 collectionView];

  v9 = SKUIEditorialLayoutOrientationForView(v8);
  v10 = [(SKUIRowSection *)self _editorialLayoutForEditorial:v6 columnIndex:a4];

  v11 = [v10 bodyTextLayoutForOrientation:v9];

  if ([v11 requiresTruncation] && (-[NSMutableIndexSet containsIndex:](self->_expandedEditorialIndexes, "containsIndex:", a4) & 1) == 0)
  {
    expandedEditorialIndexes = self->_expandedEditorialIndexes;
    if (!expandedEditorialIndexes)
    {
      v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v14 = self->_expandedEditorialIndexes;
      self->_expandedEditorialIndexes = v13;

      expandedEditorialIndexes = self->_expandedEditorialIndexes;
    }

    [(NSMutableIndexSet *)expandedEditorialIndexes addIndex:a4];
    self->_landscapeCellContentHeight = 0.0;
    self->_portraitCellContentHeight = 0.0;
    v15 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v17[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v8 reloadItemsAtIndexPaths:v16];
  }
}

- (double)_heightForArtwork:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5
{
  v8 = a3;
  [(SKUIRowSection *)self _columnWidthForColumnIndex:a4 rowWidth:a5];
  v10 = v9;
  v11 = [v8 height];
  v12 = [v8 width];

  v13 = v10 / v12 * v11;
  return floorf(v13);
}

- (double)_heightForComponent:(id)a3 columnIndex:(double)a4 rowWidth:(double)a5
{
  v8 = a3;
  v9 = [v8 componentType];
  v10 = 0.0;
  if (v9 > 8)
  {
    switch(v9)
    {
      case 9:
        [(SKUIRowSection *)self _heightForLockupComponent:v8 columnIndex:a4 rowWidth:a5];
        goto LABEL_14;
      case 10:
        [(SKUIRowSection *)self _heightForMediaComponent:v8 columnIndex:a4 rowWidth:a5];
        goto LABEL_14;
      case 14:
        [v8 height];
        goto LABEL_14;
    }
  }

  else
  {
    switch(v9)
    {
      case 2:
        [(SKUIRowSection *)self _heightForCountdownComponent:v8 columnIndex:a4 rowWidth:a5];
        goto LABEL_14;
      case 5:
        [(SKUIRowSection *)self _heightForEditorialComponent:v8 columnIndex:a4 rowWidth:a5];
        goto LABEL_14;
      case 7:
        [(SKUIRowSection *)self _heightForGalleryComponent:v8 columnIndex:a4 rowWidth:a5];
LABEL_14:
        v10 = v11;
        break;
    }
  }

  return v10;
}

- (double)_heightForCountdownComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5
{
  v8 = [a3 countdown];
  v9 = [v8 artworkProvider];
  v10 = [v9 largestArtwork];

  if (v10)
  {
    [(SKUIRowSection *)self _heightForArtwork:v10 columnIndex:a4 rowWidth:a5];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)_heightForEditorialComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5
{
  v7 = [(SKUIRowSection *)self _editorialLayoutForEditorial:a3 columnIndex:a5];
  v8 = [(SKUIStorePageSection *)self context];
  v9 = [v8 collectionView];
  v10 = SKUIEditorialLayoutOrientationForView(v9);

  [v7 layoutHeightForOrientation:v10 expanded:{-[NSMutableIndexSet containsIndex:](self->_expandedEditorialIndexes, "containsIndex:", a4)}];
  v12 = v11 + 17.0;

  return v12;
}

- (double)_heightForGalleryComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = [a3 childComponents];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SKUIRowSection *)self _heightForMediaComponent:*(*(&v16 + 1) + 8 * i) columnIndex:a4 rowWidth:a5];
        if (v12 < v14)
        {
          v12 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)_heightForLockupComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5
{
  v7 = a3;
  v8 = [(SKUIStorePageSection *)self context];
  v9 = [v7 editorial];
  v24 = 0uLL;
  v25 = 0;
  [(SKUIRowSection *)self _lockupStyleForComponent:v7 columnIndex:a4];
  v10 = [v7 item];
  v11 = [v8 parentViewController];
  v12 = [v11 clientContext];
  v22 = v24;
  v23 = v25;
  [SKUILockupItemCellLayout heightForLockupStyle:&v22 item:v10 editorial:v9 clientContext:v12];
  v14 = v13;

  if (v9)
  {
    v15 = [(SKUIRowSection *)self _editorialLayoutForLockup:v7 columnIndex:a4];
    v16 = [v8 collectionView];
    v17 = SKUIEditorialLayoutOrientationForView(v16);

    [v15 layoutHeightForOrientation:v17 expanded:1];
    v19 = v18 + 17.0;
    if (SKUILockupLayoutStyleIsHorizontal(*(&v24 + 1)))
    {
      v14 = v14 + v19;
    }

    else
    {
      v20 = v19 + 26.0;
      if ((v25 & 4) == 0)
      {
        v20 = v19;
      }

      if (v20 >= v14)
      {
        v14 = v20;
      }
    }
  }

  return v14;
}

- (double)_heightForMediaComponent:(id)a3 columnIndex:(int64_t)a4 rowWidth:(double)a5
{
  v8 = [a3 bestThumbnailArtwork];
  if (v8)
  {
    [(SKUIRowSection *)self _heightForArtwork:v8 columnIndex:a4 rowWidth:a5];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (id)_imageConsumerWithItem:(id)a3 lockupSize:(int64_t)a4
{
  v5 = [a3 itemKind];
  if (v5 <= 0x11 && ((1 << v5) & 0x21020) != 0)
  {
    v6 = [SKUIStyledImageDataConsumer lockupIconConsumerWithSize:a4, v5];
  }

  else
  {
    v6 = [SKUIProductImageDataConsumer lockupConsumerWithSize:a4 itemKind:v5];
  }

  return v6;
}

- (double)_interColumnSpacing
{
  result = 20.0;
  if (self->_isPad)
  {
    v3 = [(SKUIStorePageSection *)self context];
    v4 = [v3 collectionView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    result = 28.0;
    if (v6 > v8)
    {
      return 30.0;
    }
  }

  return result;
}

- (void)_loadImagesForGalleryComponent:(id)a3 columnIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(SKUIRowSection *)self _viewControllerForGalleryComponent:v6];
  if (v7)
  {
    v8 = [(SKUIStorePageSection *)self context];
    [v8 landscapePageWidth];
    v10 = v9;
    [v8 portraitPageWidth];
    if (v10 >= v11)
    {
      v11 = v10;
    }

    [(SKUIRowSection *)self _columnWidthForColumnIndex:a4 rowWidth:v11];
    v13 = v12;
    v14 = [v6 childComponents];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__SKUIRowSection__loadImagesForGalleryComponent_columnIndex___block_invoke;
    v15[3] = &unk_2781FBF98;
    v16 = v7;
    v17 = v13;
    [v14 enumerateObjectsUsingBlock:v15];
  }
}

- (id)_lockupImageForComponent:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 resourceLoader];

  v7 = [(NSMapTable *)self->_componentArtworkRequestIDs objectForKey:v4];
  v8 = v7;
  if (v7)
  {
    v9 = [v6 cachedResourceForRequestIdentifier:{objc_msgSend(v7, "unsignedIntegerValue")}];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
LABEL_6:
      v12 = v11;
      goto LABEL_12;
    }

    if ([v6 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v8, "unsignedIntegerValue")}])
    {
      v11 = [(SKUIRowSection *)self _lockupPlaceholderForComponent:v4];
      goto LABEL_6;
    }
  }

  v10 = [v4 item];
  if (v4)
  {
    [v4 lockupStyle];
  }

  v13 = SKUILockupImageSizeForLockupSize(0, [v10 itemKind]);
  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 scale];
  v16 = (v15 * v13);

  v17 = [v10 artworkURLForSize:v16];
  if (v17)
  {
    v18 = objc_alloc_init(SKUIArtworkRequest);
    v19 = [(SKUIRowSection *)self _imageConsumerWithItem:v10 lockupSize:0];
    [(SKUIArtworkRequest *)v18 setDataConsumer:v19];

    [(SKUIArtworkRequest *)v18 setDelegate:self];
    [(SKUIArtworkRequest *)v18 setURL:v17];
    componentArtworkRequestIDs = self->_componentArtworkRequestIDs;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v18, "requestIdentifier")}];
    [(NSMapTable *)componentArtworkRequestIDs setObject:v21 forKey:v4];

    [v6 loadResourceWithRequest:v18 reason:1];
  }

  v12 = [(SKUIRowSection *)self _lockupPlaceholderForComponent:v4];

LABEL_12:

  return v12;
}

- (id)_lockupPlaceholderForComponent:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  if (v4)
  {
    [v4 lockupStyle];
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SKUIRowSection *)self _imageConsumerWithItem:v5 lockupSize:v6];

  v8 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
  v9 = [v7 imageForColor:v8];

  return v9;
}

- (SKUILockupStyle)_lockupStyleForComponent:(SEL)a3 columnIndex:(id)a4
{
  v8 = a4;
  retstr->layoutStyle = 0;
  retstr->visibleFields = 0;
  retstr->artworkSize = 0;
  v16 = v8;
  if (v8)
  {
    [v8 lockupStyle];
    v8 = v16;
  }

  if (self->_isPad)
  {
    if ((retstr->artworkSize - 3) >= 2)
    {
      if (retstr->artworkSize != 5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = [(SKUIStorePageSection *)self pageComponent];
      if ([v9 numberOfColumns] < 2)
      {

        goto LABEL_12;
      }

      v10 = [v9 columnWidths];
      v11 = [v10 objectAtIndex:a5];

      v12 = [v11 integerValue];
      v8 = v16;
      if (v12 != 1)
      {
        goto LABEL_13;
      }
    }

    v13 = [v8 editorial];

    if (v13)
    {
      retstr->layoutStyle = 0;
LABEL_12:
      v8 = v16;
      goto LABEL_13;
    }

    layoutStyle = retstr->layoutStyle;
    if (layoutStyle == 1)
    {
      retstr->layoutStyle = 3;
      goto LABEL_12;
    }

    v8 = v16;
    if (!layoutStyle)
    {
      retstr->layoutStyle = 2;
    }
  }

LABEL_13:

  return result;
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

- (id)_newSizeToFitArtworkRequestWithArtwork:(id)a3 columnIndex:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(SKUIArtworkRequest);
  [(SKUIArtworkRequest *)v7 setDelegate:self];
  v8 = [v6 URL];

  [(SKUIArtworkRequest *)v7 setURL:v8];
  v9 = [(SKUIStorePageSection *)self context];
  [v9 landscapePageWidth];
  v11 = v10;
  [v9 portraitPageWidth];
  if (v11 >= v12)
  {
    v12 = v11;
  }

  [(SKUIRowSection *)self _columnWidthForColumnIndex:a4 rowWidth:v12];
  v13 = [SKUISizeToFitImageDataConsumer consumerWithConstraintSize:?];
  [(SKUIArtworkRequest *)v7 setDataConsumer:v13];

  return v7;
}

- (id)_newViewWithMediaComponent:(id)a3
{
  v4 = objc_alloc_init(SKUIEmbeddedMediaView);
  [(SKUIEmbeddedMediaView *)v4 setDelegate:self];
  return v4;
}

- (id)_overlaySourceCell
{
  if (self->_overlaySourceComponent)
  {
    v3 = [(SKUIStorePageSection *)self context];
    v4 = [v3 collectionView];

    v5 = [(SKUIStorePageSection *)self pageComponent];
    v6 = [v5 childComponents];
    v7 = [v6 indexOfObjectIdenticalTo:self->_overlaySourceComponent];

    v8 = [MEMORY[0x277CCAA70] indexPathForItem:v7 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v9 = [v4 cellForItemAtIndexPath:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_popSourceViewForOverlayController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_overlaySourceComponent && [v4 numberOfVisibleOverlays] <= 1)
  {
    v6 = [(SKUIRowSection *)self _overlaySourceCell];
    v7 = [v6 layout];
    v8 = [v7 iconImageView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = objc_alloc(MEMORY[0x277D755E8]);
    v18 = [v7 iconImage];
    v19 = [v17 initWithImage:v18];

    v20 = [MEMORY[0x277D75348] clearColor];
    [v19 setBackgroundColor:v20];

    v21 = [v8 superview];
    [v21 convertRect:0 toView:{v10, v12, v14, v16}];
    [v19 setFrame:?];

    [v7 setIconImageHidden:1];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_reloadEditorialCell:(id)a3 forComponent:(id)a4 columnIndex:(int64_t)a5
{
  v20 = a3;
  v8 = a4;
  v9 = [(SKUIRowSection *)self _editorialLayoutForEditorial:v8 columnIndex:a5];
  v10 = [(SKUIStorePageSection *)self context];
  v11 = [v10 collectionView];
  v12 = SKUIEditorialLayoutOrientationForView(v11);

  if (([(NSMutableIndexSet *)self->_expandedEditorialIndexes containsIndex:a5]& 1) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v8 maximumBodyLines];
  }

  v14 = [v20 layout];
  [v14 applyEditorialLayout:v9 withOrientation:v12 expanded:v13 == 0];
  [(SKUIRowSection *)self _edgeInsetsForColumnIndex:a5];
  [v14 setContentInset:?];
  v15 = [(SKUIStorePageSection *)self context];
  v16 = [v15 parentViewController];
  v17 = [v16 clientContext];

  v18 = [v14 textBoxView];
  if (v17)
  {
    [v17 localizedStringForKey:@"MORE_BUTTON"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
  }
  v19 = ;
  [v18 setMoreButtonTitle:v19];

  [v18 setNumberOfVisibleLines:v13];
}

- (void)_reloadEditorialLockupCell:(id)a3 forComponent:(id)a4 columnIndex:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SKUIStorePageSection *)self context];
  v11 = [v9 layout];
  [v11 setClientContext:self->_clientContext];
  [(SKUIRowSection *)self _edgeInsetsForColumnIndex:a5];
  [v11 setContentInsets:?];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  [(SKUIRowSection *)self _lockupStyleForComponent:v8 columnIndex:a5];
  [v11 setLayoutStyle:v24];
  [v11 setVisibleFields:v25];
  v12 = [(SKUILockupComponent *)v8 item];
  [v9 configureForItem:v12 clientContext:self->_clientContext];
  [v9 setSeparatorStyle:0];

  v13 = [(SKUIRowSection *)self _lockupImageForComponent:v8];
  v14 = [v11 lockupCellLayout];
  [v14 setClientContext:self->_clientContext];
  [v14 setIconImage:v13];
  [v14 setIconImageHidden:self->_overlaySourceComponent == v8];
  [v14 setImageBoundingSize:{SKUILockupImageSizeForLockupSize(v23, objc_msgSend(v12, "itemKind"))}];
  [v14 setLockupSize:v23];
  v15 = [(SKUIRowSection *)self _editorialLayoutForLockup:v8 columnIndex:a5];

  v16 = [(SKUIStorePageSection *)self context];
  v17 = [v16 collectionView];
  v18 = SKUIEditorialLayoutOrientationForView(v17);

  [v11 applyEditorialLayout:v15 withOrientation:v18];
  v19 = +[SKUIItemStateCenter defaultCenter];
  v20 = [v19 stateForItemWithIdentifier:{objc_msgSend(v12, "itemIdentifier")}];
  v21 = [v10 colorScheme];
  [v11 setColoringWithColorScheme:v21];

  v22 = [v10 itemOfferButtonAppearance];
  [v11 setItemOfferButtonAppearance:v22];

  [v11 setItemState:v20];
  [v11 setRestricted:{objc_msgSend(v19, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(v12, "parentalControlsRank"))}];
}

- (void)_reloadLockupCell:(id)a3 forComponent:(id)a4 columnIndex:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SKUIStorePageSection *)self context];
  v11 = [v9 layout];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  [(SKUIRowSection *)self _lockupStyleForComponent:v8 columnIndex:a5];
  [v11 setClientContext:self->_clientContext];
  [(SKUIRowSection *)self _edgeInsetsForColumnIndex:a5];
  [v11 setContentInsets:?];
  v12 = [v10 itemOfferButtonAppearance];
  [v11 setItemOfferButtonAppearance:v12];

  [v11 setLayoutStyle:v20];
  [v11 setLockupSize:v19];
  [v11 setVerticalAlignment:0];
  [v11 setVisibleFields:v21];
  v13 = [(SKUILockupComponent *)v8 item];
  [v9 configureForItem:v13 clientContext:self->_clientContext];
  [v9 setSeparatorStyle:0];

  [v11 setImageBoundingSize:{SKUILockupImageSizeForLockupSize(v19, objc_msgSend(v13, "itemKind"))}];
  v14 = [(SKUIRowSection *)self _lockupImageForComponent:v8];
  [v11 setIconImage:v14];
  v15 = self->_overlaySourceComponent == v8;

  [v11 setIconImageHidden:v15];
  v16 = +[SKUIItemStateCenter defaultCenter];
  v17 = [v16 stateForItemWithIdentifier:{objc_msgSend(v13, "itemIdentifier")}];
  v18 = [v10 colorScheme];
  [v11 setColoringWithColorScheme:v18];

  [v11 setItemState:v17];
  [v11 setRestricted:{objc_msgSend(v16, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(v13, "parentalControlsRank"))}];
}

- (void)_reloadView:(id)a3 forMediaComponent:(id)a4 columnIndex:(int64_t)a5
{
  v22 = a3;
  v8 = a4;
  v9 = [(SKUIStorePageSection *)self context];
  v10 = [v9 resourceLoader];

  v11 = [(NSMapTable *)self->_componentArtworkRequestIDs objectForKey:v8];
  v12 = v11;
  if (!v11)
  {
    v13 = [v8 bestThumbnailArtwork];
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = [(SKUIRowSection *)self _newSizeToFitArtworkRequestWithArtwork:v13 columnIndex:a5];
    componentArtworkRequestIDs = self->_componentArtworkRequestIDs;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "requestIdentifier")}];
    [(NSMapTable *)componentArtworkRequestIDs setObject:v19 forKey:v8];

    [v10 loadResourceWithRequest:v14 reason:1];
    goto LABEL_8;
  }

  v13 = [v10 cachedResourceForRequestIdentifier:{objc_msgSend(v11, "unsignedIntegerValue")}];
  [v22 setThumbnailImage:v13];
  if (!v13 && ([v10 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v12, "unsignedIntegerValue")}] & 1) == 0)
  {
    v14 = [v8 bestThumbnailArtwork];
    if (v14)
    {
      v15 = [(SKUIRowSection *)self _newSizeToFitArtworkRequestWithArtwork:v14 columnIndex:a5];
      v16 = self->_componentArtworkRequestIDs;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "requestIdentifier")}];
      [(NSMapTable *)v16 setObject:v17 forKey:v8];

      [v10 loadResourceWithRequest:v15 reason:1];
    }

LABEL_8:
  }

LABEL_9:

  v20 = [v8 accessibilityLabel];
  [v22 setAccessibilityLabel:v20];

  [v22 setMediaType:{objc_msgSend(v8, "mediaType")}];
  v21 = [v8 mediaURLString];
  [v22 setMediaURLString:v21];
}

- (void)_selectGalleryComponent:(id)a3 columnIndex:(int64_t)a4
{
  v10 = [(NSMapTable *)self->_galleryViewControllers objectForKey:a3];
  v6 = [v10 selectedMediaComponent];
  v7 = [(SKUIStorePageSection *)self clickEventWithMedia:v6 elementName:@"Column" index:a4];
  if (v7)
  {
    v8 = [(SKUIStorePageSection *)self context];
    v9 = [v8 metricsController];
    [v9 recordEvent:v7];
  }

  [v10 performActionForSelectedComponentAnimated:1];
}

- (void)_selectLockupComponent:(id)a3 columnIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 item];
  v8 = [(SKUIRowSection *)self clickEventWithItem:v7 elementName:@"Column" index:a4];
  if (v8)
  {
    v9 = [(SKUIStorePageSection *)self context];
    v10 = [v9 metricsController];
    [v10 recordEvent:v8];
  }

  v11 = [(SKUIStorePageSection *)self context];
  v12 = [v11 parentViewController];

  v13 = [v12 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 sectionsViewController:v12 showProductPageForItem:v7] & 1) == 0)
  {
    if (SKUIItemKindIsSoftwareKind([v7 itemKind]) && (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, v15))
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __53__SKUIRowSection__selectLockupComponent_columnIndex___block_invoke;
      v16[3] = &unk_2781FBFC0;
      v16[4] = self;
      v17 = v12;
      v18 = v6;
      v19 = v7;
      [(SKUIStorePageSection *)self sendXEventWithItem:v19 completionBlock:v16];
    }

    else
    {
      [(SKUIStorePageSection *)self showProductViewControllerWithItem:v7];
    }
  }
}

uint64_t __53__SKUIRowSection__selectLockupComponent_columnIndex___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 32);
    if (!*(v4 + 168))
    {
      v5 = [[SKUIProductPageOverlayController alloc] initWithParentViewController:*(result + 40)];
      v6 = *(v3 + 32);
      v7 = *(v6 + 168);
      *(v6 + 168) = v5;

      v8 = *(*(v3 + 32) + 168);
      v9 = [*(v3 + 40) clientContext];
      [v8 setClientContext:v9];

      [*(*(v3 + 32) + 168) setDelegate:?];
      v4 = *(v3 + 32);
    }

    objc_storeStrong((v4 + 176), *(v3 + 48));
    [*(*(v3 + 32) + 168) showWithInitialItem:*(v3 + 56)];
    v10 = *(v3 + 40);
    v11 = *(*(v3 + 32) + 168);

    return [v10 _setActiveProductPageOverlayController:v11];
  }

  return result;
}

- (void)_selectMediaComponent:(id)a3 columnIndex:(int64_t)a4
{
  v9 = a3;
  v5 = [SKUIStorePageSection clickEventWithMedia:"clickEventWithMedia:elementName:index:" elementName:? index:?];
  if (v5)
  {
    v6 = [(SKUIStorePageSection *)self context];
    v7 = [v6 metricsController];
    [v7 recordEvent:v5];
  }

  if ([v9 mediaType])
  {
    v8 = [(NSMapTable *)self->_columnViews objectForKey:v9];
    [v8 beginPlaybackAnimated:1];
  }

  else
  {
    v8 = [v9 link];
    [(SKUIStorePageSection *)self showPageWithLink:v8];
  }
}

- (void)_setPositionForClickEvent:(id)a3 elementIndex:(int64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(SKUIStorePageSection *)self context];
    v10 = [v7 collectionView];

    v8 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v9 = [v10 cellForItemAtIndexPath:v8];

    SKUIMetricsSetClickEventPositionWithView(v6, v9);
  }
}

- (id)_viewControllerForCountdownComponent:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_countdownViewControllers objectForKey:v4];
  if (!v5)
  {
    v6 = [(SKUIStorePageSection *)self context];
    v7 = [SKUICountdownViewController alloc];
    v8 = [v6 resourceLoader];
    v5 = [(SKUICountdownViewController *)v7 initWithCountdownComponent:v4 artworkLoader:v8];

    [(SKUICountdownViewController *)v5 setClientContext:self->_clientContext];
    v9 = [(SKUIStorePageSection *)self pageComponent];
    v10 = [v9 childComponents];
    v11 = [v10 indexOfObjectIdenticalTo:v4];

    v12 = [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v13 = [(SKUICountdownViewController *)v5 view];
    v14 = [(SKUIRowSection *)self backgroundColorForIndexPath:v12];
    [v13 setBackgroundColor:v14];

    countdownViewControllers = self->_countdownViewControllers;
    if (!countdownViewControllers)
    {
      v16 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v17 = self->_countdownViewControllers;
      self->_countdownViewControllers = v16;

      countdownViewControllers = self->_countdownViewControllers;
    }

    [(NSMapTable *)countdownViewControllers setObject:v5 forKey:v4];
    v18 = [v6 parentViewController];
    [v18 addChildViewController:v5];
  }

  return v5;
}

- (id)_viewControllerForGalleryComponent:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_galleryViewControllers objectForKey:v4];
  if (!v5)
  {
    v6 = [(SKUIStorePageSection *)self context];
    v7 = [SKUIGalleryViewController alloc];
    v8 = [v6 resourceLoader];
    v5 = [(SKUIGalleryViewController *)v7 initWithGalleryComponent:v4 artworkLoader:v8];

    [(SKUIGalleryViewController *)v5 setEmbeddedMediaDelegate:self];
    v9 = [(SKUIStorePageSection *)self pageComponent];
    v10 = [v9 childComponents];
    v11 = [v10 indexOfObjectIdenticalTo:v4];

    v12 = [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v13 = [(SKUIRowSection *)self backgroundColorForIndexPath:v12];
    [(SKUIGalleryViewController *)v5 setBackgroundColor:v13];

    galleryViewControllers = self->_galleryViewControllers;
    if (!galleryViewControllers)
    {
      v15 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v16 = self->_galleryViewControllers;
      self->_galleryViewControllers = v15;

      galleryViewControllers = self->_galleryViewControllers;
    }

    [(NSMapTable *)galleryViewControllers setObject:v5 forKey:v4];
    v17 = [v6 parentViewController];
    [v17 addChildViewController:v5];
  }

  return v5;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRowSection initWithPageComponent:]";
}

@end