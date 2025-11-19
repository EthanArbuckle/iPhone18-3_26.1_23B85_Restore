@interface PBFGalleryCollectionViewController
@end

@implementation PBFGalleryCollectionViewController

void __68___PBFGalleryCollectionViewController_initWithCollectionViewLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68___PBFGalleryCollectionViewController_initWithCollectionViewLayout___block_invoke_2;
  v5[3] = &unk_2782C70C0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __68___PBFGalleryCollectionViewController_initWithCollectionViewLayout___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _rotationAssertionStateDidChange:{objc_msgSend(*(a1 + 32), "isActive")}];
}

id __50___PBFGalleryCollectionViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained dataProvider];
  v12 = [v11 sectionIdentifierForIndex:{objc_msgSend(v7, "section")}];
  v13 = [v11 sectionTypeForSectionWithIdentifier:v12];
  v14 = [v11 previewForPreviewUniqueIdentifier:v8];

  v15 = @"kGalleryPosterCellReuseIdentifier";
  if (v13 != 4)
  {
    if (v13 == 2)
    {
      v15 = @"kGalleryPosterCellWithDescriptionReuseIdentifier";
      goto LABEL_13;
    }

    v16 = [v14 type];
    v17 = PBFPreviewTypeSmartAlbum;

    if (v16 == v17)
    {
      v15 = @"kGalleryPosterSmartAlbumCellReuseIdentifier";
      goto LABEL_13;
    }

    v18 = [v14 type];
    v19 = PBFPreviewTypeHero;

    if (v18 == v19)
    {
      v15 = @"kGalleryPosterHeroCellReuseIdentifier";
      goto LABEL_13;
    }

    v20 = [v14 subtitleComplication];
    if (v20)
    {

LABEL_12:
      v15 = @"kGalleryPosterCellWithComplicationsReuseIdentifier";
      goto LABEL_13;
    }

    v21 = [v14 suggestedComplications];
    if ([v21 count])
    {

      goto LABEL_12;
    }

    v24 = [v14 suggestedLandscapeComplications];
    v25 = [v24 count];

    if (v25)
    {
      v15 = @"kGalleryPosterCellWithComplicationsReuseIdentifier";
    }
  }

LABEL_13:
  v22 = [v9 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v7];
  [WeakRetained configureCell:v22 forCollectionView:v9 posterPreview:v14 indexPath:v7];

  return v22;
}

id __50___PBFGalleryCollectionViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([@"KGalleryHeaderElementKind" isEqual:v8])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = [WeakRetained dataProvider];

    v12 = [v11 sectionIdentifierForIndex:{objc_msgSend(v9, "section")}];
    v13 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:@"KGalleryHeaderElementKind" forIndexPath:v9];
    v14 = [v11 localizedTitleForSectionWithIdentifier:v12];
    v15 = [v11 localizedSubtitleForSectionWithIdentifier:v12];
    [v13 setText:v14];
    [v13 setSubtitle:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __72___PBFGalleryCollectionViewController__updateAssetHelperActiveContexts___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [PBFGenericDisplayContext genericDisplayContextWithDisplayContext:*(a1 + 32)];
  v7 = [v4 displayContextWithUpdatedInterfaceOrientation:a2];

  if (([v7 isEqualToDisplayContext:*(a1 + 32)] & 1) == 0)
  {
    [*(a1 + 40) addObject:v7];
  }

  v5 = [v7 displayContextWithUpdatedUserInterfaceStyle:1];
  if (([v5 isEqualToDisplayContext:*(a1 + 32)] & 1) == 0)
  {
    [*(a1 + 40) addObject:v5];
  }

  v6 = [v7 displayContextWithUpdatedUserInterfaceStyle:2];
  if (([v6 isEqualToDisplayContext:*(a1 + 32)] & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __90___PBFGalleryCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidateLayout];
  [*(a1 + 40) _updateAssetHelperActiveContexts:1];
  if (*(a1 + 56) == 1)
  {
    [*(*(a1 + 40) + 1048) setSuspended:1];
  }

  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __90___PBFGalleryCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v3[3] = &unk_2782C7188;
  v3[4] = v2;
  v4 = *(a1 + 48);
  [v2 _enumerateVisiblePosterPreviews:v3];
}

void __90___PBFGalleryCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 1056) objectForKey:v5];
  if (!v6)
  {
    v6 = [*(a1 + 40) cellForItemAtIndexPath:v5];
  }

  [*(a1 + 32) configureCell:v6 forCollectionView:*(a1 + 40) posterPreview:v7 indexPath:v5];
}

uint64_t __90___PBFGalleryCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

PBFApplicationStateComponent *__50___PBFGalleryCollectionViewController__resetState__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 posterDescriptorLookupInfo];
  v3 = [v2 posterDescriptorPath];

  v4 = [PBFApplicationStateComponent alloc];
  v5 = [v3 serverIdentity];
  v6 = [(PBFApplicationStateComponent *)v4 initWithServerIdentity:v5];

  return v6;
}

void __95___PBFGalleryCollectionViewController_configureCell_forCollectionView_posterPreview_indexPath___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[130];
    v6 = [v7 superview];

    if (v6 == v5)
    {
      [v7 setNeedsLayout];
    }

    else
    {
      [v5 addSubview:v7];
    }
  }
}

uint64_t __79___PBFGalleryCollectionViewController_assetHelper_choosePosterPreviewToGoLive___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 section];
  [v5 section];
  v6 = BSCompareIntegers();
  if (!v6)
  {
    [v4 item];
    [v5 item];
    v6 = BSCompareIntegers();
  }

  return v6;
}

id __80___PBFGalleryCollectionViewController_collectionView_prefetchItemsAtIndexPaths___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1144);
  v4 = [*(v2 + 1032) itemIdentifierForIndexPath:a2];
  v5 = [v3 previewForPreviewUniqueIdentifier:v4];

  return v5;
}

id __92___PBFGalleryCollectionViewController_collectionView_cancelPrefetchingForItemsAtIndexPaths___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1144);
  v4 = [*(v2 + 1032) itemIdentifierForIndexPath:a2];
  v5 = [v3 previewForPreviewUniqueIdentifier:v4];

  return v5;
}

@end