@interface PXStoryMemoryFeedItemLayoutFactory
- (BOOL)shouldReloadItemLayout:(id)layout forChangedItemFromIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source toIndexPath:(PXSimpleIndexPath *)indexPath inDataSource:(id)dataSource;
- (id)createLayoutForFeedItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source viewModel:(id)model initialReferenceSize:(CGSize)size thumbnailAsset:(id *)asset;
- (id)itemPlacementControllerForItemReference:(id)reference itemLayout:(id)layout;
- (void)collectTapToRadarDiagnosticsForItemLayout:(id)layout indexPath:(PXSimpleIndexPath *)path intoContainer:(id)container;
- (void)setItemLayout:(id)layout isHovered:(BOOL)hovered;
- (void)setItemLayout:(id)layout isTouched:(BOOL)touched;
- (void)setItemLayout:(id)layout shouldAutoplayContent:(BOOL)content videoTimeRange:(id *)range;
@end

@implementation PXStoryMemoryFeedItemLayoutFactory

- (void)collectTapToRadarDiagnosticsForItemLayout:(id)layout indexPath:(PXSimpleIndexPath *)path intoContainer:(id)container
{
  v7 = MEMORY[0x1E696AD60];
  containerCopy = container;
  layoutCopy = layout;
  v10 = objc_alloc_init(v7);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __104__PXStoryMemoryFeedItemLayoutFactory_collectTapToRadarDiagnosticsForItemLayout_indexPath_intoContainer___block_invoke;
  v16 = &unk_1E77353A0;
  v17 = v10;
  v11 = v10;
  [layoutCopy enumerateDescendantsLayoutsUsingBlock:&v13];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Feed Item #%li", path->item, v13, v14, v15, v16];
  [containerCopy addAttachmentWithText:v11 name:v12];
}

void __104__PXStoryMemoryFeedItemLayoutFactory_collectTapToRadarDiagnosticsForItemLayout_indexPath_intoContainer___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F196C830])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = +[PXStorySettings possibleFeedHUDTypes];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v14 + 1) + 8 * v8) integerValue];
          v10 = [v3 diagnosticTextForHUDType:v9 displaySize:{1920.0, 1080.0}];
          if (v10)
          {
            v11 = @"None";
            if ((v9 - 1) <= 0x12)
            {
              v11 = off_1E77401C0[v9 - 1];
            }

            v12 = *(a1 + 32);
            v13 = v11;
            [v12 appendFormat:@"== %@ ==\n", v13];

            [*(a1 + 32) appendString:v10];
            [*(a1 + 32) appendString:@"\n"];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }
}

- (id)itemPlacementControllerForItemReference:(id)reference itemLayout:(id)layout
{
  layoutCopy = layout;
  referenceCopy = reference;
  v7 = [layoutCopy itemPlacementControllerForItemReference:referenceCopy];

  return v7;
}

- (BOOL)shouldReloadItemLayout:(id)layout forChangedItemFromIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source toIndexPath:(PXSimpleIndexPath *)indexPath inDataSource:(id)dataSource
{
  layoutCopy = layout;
  v12 = *&path->item;
  v37 = *&path->dataSourceIdentifier;
  v38 = v12;
  dataSourceCopy = dataSource;
  v14 = [source objectAtIndexPath:&v37];
  v15 = *&indexPath->item;
  v37 = *&indexPath->dataSourceIdentifier;
  v38 = v15;
  v16 = [dataSourceCopy objectAtIndexPath:&v37];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v22 = 0;
    goto LABEL_11;
  }

  v17 = __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke(v16);
  v18 = __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke(v14);
  v19 = v17;
  v20 = v18;
  v21 = v20;
  if (v19 == v20)
  {

LABEL_13:
    v24 = __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_2(v14);
    v23 = __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_2(v16);
    if (v24 == v23 || [v24 isEqualToString:v23])
    {
      v27 = __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_3(v14);
      v28 = __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_3(v16);
      if (v27 == v28 || [v27 isEqualToString:v28])
      {
        v36 = v27;
        v29 = __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_4(v14);
        v30 = __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_4(v16);
        v35 = v29;
        if (v29 == v30 || [v29 isEqualToString:{v30, v29}])
        {
          v31 = __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_5(v14);
          v22 = v31 != __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_5(v16);
        }

        else
        {
          v22 = 1;
        }

        v27 = v36;
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 1;
    }

    goto LABEL_25;
  }

  v22 = 1;
  v23 = v20;
  v24 = v19;
  if (v19 && v20)
  {
    v25 = [v19 isContentEqualTo:v20];
    if (!v25)
    {
      v25 = [v21 isContentEqualTo:v19];
    }

    if (v25 != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

LABEL_25:

LABEL_26:
  isFavorite = [v14 isFavorite];
  if (isFavorite != [v16 isFavorite])
  {
    model = [layoutCopy model];
    isFavorite2 = [v16 isFavorite];
    v22 |= isFavorite2 ^ [model currentAssetCollectionIsFavorite];
  }

LABEL_11:

  return v22 & 1;
}

id __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke(void *a1)
{
  v1 = [a1 keyAssetFetchResult];
  v2 = [v1 firstObject];

  return v2;
}

id __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_2(void *a1)
{
  v1 = [a1 assetCollection];
  v2 = [v1 localizedTitle];

  return v2;
}

id __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_3(void *a1)
{
  v1 = [a1 assetCollection];
  v2 = [v1 localizedSubtitle];

  return v2;
}

__CFString *__127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_4(void *a1)
{
  v1 = a1;
  v2 = [v1 assetCollection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v1 assetCollection];
    v5 = [v4 storyTitleCategory];
  }

  else
  {
    v5 = &stru_1F1741150;
  }

  return v5;
}

uint64_t __127__PXStoryMemoryFeedItemLayoutFactory_shouldReloadItemLayout_forChangedItemFromIndexPath_inDataSource_toIndexPath_inDataSource___block_invoke_5(void *a1)
{
  v1 = a1;
  v2 = [v1 assetCollection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v1 assetCollection];
    v5 = [v4 storyColorGradeKind];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setItemLayout:(id)layout isHovered:(BOOL)hovered
{
  model = [layout model];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PXStoryMemoryFeedItemLayoutFactory_setItemLayout_isHovered___block_invoke;
  v6[3] = &__block_descriptor_33_e31_v16__0___PXStoryMutableModel__8l;
  hoveredCopy = hovered;
  [model performChanges:v6];
}

- (void)setItemLayout:(id)layout isTouched:(BOOL)touched
{
  model = [layout model];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PXStoryMemoryFeedItemLayoutFactory_setItemLayout_isTouched___block_invoke;
  v6[3] = &__block_descriptor_33_e31_v16__0___PXStoryMutableModel__8l;
  touchedCopy = touched;
  [model performChanges:v6];
}

- (void)setItemLayout:(id)layout shouldAutoplayContent:(BOOL)content videoTimeRange:(id *)range
{
  model = [layout model];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PXStoryMemoryFeedItemLayoutFactory_setItemLayout_shouldAutoplayContent_videoTimeRange___block_invoke;
  v9[3] = &__block_descriptor_81_e31_v16__0___PXStoryMutableModel__8l;
  contentCopy = content;
  v8 = *&range->var0.var3;
  v10 = *&range->var0.var0;
  v11 = v8;
  v12 = *&range->var1.var1;
  [model performChanges:v9];
}

void __89__PXStoryMemoryFeedItemLayoutFactory_setItemLayout_shouldAutoplayContent_videoTimeRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  v4 = a2;
  [v4 setShouldAutoplayThumbnail:v3];
  v5 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v5;
  v6[2] = *(a1 + 64);
  [v4 setThumbnailAutoplayTimeRange:v6];
}

- (id)createLayoutForFeedItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source viewModel:(id)model initialReferenceSize:(CGSize)size thumbnailAsset:(id *)asset
{
  height = size.height;
  width = size.width;
  sourceCopy = source;
  modelCopy = model;
  v16 = *&path->item;
  v53[0] = *&path->dataSourceIdentifier;
  v53[1] = v16;
  v17 = [sourceCopy objectReferenceAtIndexPath:v53];
  v18 = v17;
  if (!v17)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedItemLayoutFactory.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"objectReference != nil"}];

    v17 = 0;
  }

  v19 = PXStoryConfigurationForObjectReference(v17);
  [v19 setLaunchType:@"ForYou"];
  if (!v19)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedItemLayoutFactory.m" lineNumber:63 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v20 = +[PXStorySettings sharedInstance];
  v21 = v20;
  assetCopy = asset;
  v44 = v18;
  if (path->item)
  {
    wantsFullscreenFeedExperience = 0;
  }

  else
  {
    wantsFullscreenFeedExperience = [v20 wantsFullscreenFeedExperience];
  }

  v23 = [PXStoryMemoryFeedItemExtendedTraitCollection alloc];
  specManager = [modelCopy specManager];
  height = [(PXStoryMemoryFeedItemExtendedTraitCollection *)v23 initWithSpecManager:specManager initialReferenceSize:wantsFullscreenFeedExperience isFullscreen:width, height];

  v25 = [v19 copyWithAdditionalOptions:66];
  assetCollectionActionPerformerDelegate = [modelCopy assetCollectionActionPerformerDelegate];
  [v25 setAssetCollectionActionPerformerDelegate:assetCollectionActionPerformerDelegate];

  presentingViewController = [modelCopy presentingViewController];
  [v25 setPresentingViewController:presentingViewController];

  [v25 setContainerTapToRadarDiagnosticsProvider:modelCopy];
  v28 = [[PXStoryModel alloc] initWithConfiguration:v25 extendedTraitCollection:height];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __132__PXStoryMemoryFeedItemLayoutFactory_createLayoutForFeedItemAtIndexPath_inDataSource_viewModel_initialReferenceSize_thumbnailAsset___block_invoke;
  v50[3] = &unk_1E7735330;
  v51 = v21;
  v52 = wantsFullscreenFeedExperience;
  v29 = v21;
  [(PXStoryModel *)v28 performChanges:v50];
  actionPerformer = [modelCopy actionPerformer];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __132__PXStoryMemoryFeedItemLayoutFactory_createLayoutForFeedItemAtIndexPath_inDataSource_viewModel_initialReferenceSize_thumbnailAsset___block_invoke_2;
  v45[3] = &unk_1E7735358;
  v31 = *&path->item;
  v48 = *&path->dataSourceIdentifier;
  v49 = v31;
  v46 = actionPerformer;
  v47 = sourceCopy;
  v32 = sourceCopy;
  v33 = actionPerformer;
  thumbnailActionPerformer = [(PXStoryModel *)v28 thumbnailActionPerformer];
  [thumbnailActionPerformer setPresentPlayerAction:v45];

  v35 = [[PXStoryLayout alloc] initWithModel:v28];
  resourcesDataSourceManager = [(PXStoryModel *)v28 resourcesDataSourceManager];
  dataSource = [resourcesDataSourceManager dataSource];
  keyAssetResource = [dataSource keyAssetResource];
  *assetCopy = [keyAssetResource px_storyResourceDisplayAsset];

  return v35;
}

void __132__PXStoryMemoryFeedItemLayoutFactory_createLayoutForFeedItemAtIndexPath_inDataSource_viewModel_initialReferenceSize_thumbnailAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setIsHUDVisible:{objc_msgSend(v3, "isFeedHUDVisible")}];
  [v5 setDiagnosticHUDType:{objc_msgSend(*(a1 + 32), "feedHUDType")}];
  if (*(a1 + 40))
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  [v5 setThumbnailStyle:v4];
}

uint64_t __132__PXStoryMemoryFeedItemLayoutFactory_createLayoutForFeedItemAtIndexPath_inDataSource_viewModel_initialReferenceSize_thumbnailAsset___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  return [v2 handlePrimaryActionOnItemAtIndexPath:v5 inDataSource:v1];
}

@end