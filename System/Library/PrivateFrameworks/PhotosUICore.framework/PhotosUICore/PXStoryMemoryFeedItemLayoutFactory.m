@interface PXStoryMemoryFeedItemLayoutFactory
- (BOOL)shouldReloadItemLayout:(id)a3 forChangedItemFromIndexPath:(PXSimpleIndexPath *)a4 inDataSource:(id)a5 toIndexPath:(PXSimpleIndexPath *)a6 inDataSource:(id)a7;
- (id)createLayoutForFeedItemAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4 viewModel:(id)a5 initialReferenceSize:(CGSize)a6 thumbnailAsset:(id *)a7;
- (id)itemPlacementControllerForItemReference:(id)a3 itemLayout:(id)a4;
- (void)collectTapToRadarDiagnosticsForItemLayout:(id)a3 indexPath:(PXSimpleIndexPath *)a4 intoContainer:(id)a5;
- (void)setItemLayout:(id)a3 isHovered:(BOOL)a4;
- (void)setItemLayout:(id)a3 isTouched:(BOOL)a4;
- (void)setItemLayout:(id)a3 shouldAutoplayContent:(BOOL)a4 videoTimeRange:(id *)a5;
@end

@implementation PXStoryMemoryFeedItemLayoutFactory

- (void)collectTapToRadarDiagnosticsForItemLayout:(id)a3 indexPath:(PXSimpleIndexPath *)a4 intoContainer:(id)a5
{
  v7 = MEMORY[0x1E696AD60];
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __104__PXStoryMemoryFeedItemLayoutFactory_collectTapToRadarDiagnosticsForItemLayout_indexPath_intoContainer___block_invoke;
  v16 = &unk_1E77353A0;
  v17 = v10;
  v11 = v10;
  [v9 enumerateDescendantsLayoutsUsingBlock:&v13];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Feed Item #%li", a4->item, v13, v14, v15, v16];
  [v8 addAttachmentWithText:v11 name:v12];
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

- (id)itemPlacementControllerForItemReference:(id)a3 itemLayout:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 itemPlacementControllerForItemReference:v6];

  return v7;
}

- (BOOL)shouldReloadItemLayout:(id)a3 forChangedItemFromIndexPath:(PXSimpleIndexPath *)a4 inDataSource:(id)a5 toIndexPath:(PXSimpleIndexPath *)a6 inDataSource:(id)a7
{
  v11 = a3;
  v12 = *&a4->item;
  v37 = *&a4->dataSourceIdentifier;
  v38 = v12;
  v13 = a7;
  v14 = [a5 objectAtIndexPath:&v37];
  v15 = *&a6->item;
  v37 = *&a6->dataSourceIdentifier;
  v38 = v15;
  v16 = [v13 objectAtIndexPath:&v37];

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
  v32 = [v14 isFavorite];
  if (v32 != [v16 isFavorite])
  {
    v33 = [v11 model];
    v34 = [v16 isFavorite];
    v22 |= v34 ^ [v33 currentAssetCollectionIsFavorite];
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

- (void)setItemLayout:(id)a3 isHovered:(BOOL)a4
{
  v5 = [a3 model];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PXStoryMemoryFeedItemLayoutFactory_setItemLayout_isHovered___block_invoke;
  v6[3] = &__block_descriptor_33_e31_v16__0___PXStoryMutableModel__8l;
  v7 = a4;
  [v5 performChanges:v6];
}

- (void)setItemLayout:(id)a3 isTouched:(BOOL)a4
{
  v5 = [a3 model];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PXStoryMemoryFeedItemLayoutFactory_setItemLayout_isTouched___block_invoke;
  v6[3] = &__block_descriptor_33_e31_v16__0___PXStoryMutableModel__8l;
  v7 = a4;
  [v5 performChanges:v6];
}

- (void)setItemLayout:(id)a3 shouldAutoplayContent:(BOOL)a4 videoTimeRange:(id *)a5
{
  v7 = [a3 model];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PXStoryMemoryFeedItemLayoutFactory_setItemLayout_shouldAutoplayContent_videoTimeRange___block_invoke;
  v9[3] = &__block_descriptor_81_e31_v16__0___PXStoryMutableModel__8l;
  v13 = a4;
  v8 = *&a5->var0.var3;
  v10 = *&a5->var0.var0;
  v11 = v8;
  v12 = *&a5->var1.var1;
  [v7 performChanges:v9];
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

- (id)createLayoutForFeedItemAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4 viewModel:(id)a5 initialReferenceSize:(CGSize)a6 thumbnailAsset:(id *)a7
{
  height = a6.height;
  width = a6.width;
  v14 = a4;
  v15 = a5;
  v16 = *&a3->item;
  v53[0] = *&a3->dataSourceIdentifier;
  v53[1] = v16;
  v17 = [v14 objectReferenceAtIndexPath:v53];
  v18 = v17;
  if (!v17)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedItemLayoutFactory.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"objectReference != nil"}];

    v17 = 0;
  }

  v19 = PXStoryConfigurationForObjectReference(v17);
  [v19 setLaunchType:@"ForYou"];
  if (!v19)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedItemLayoutFactory.m" lineNumber:63 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v20 = +[PXStorySettings sharedInstance];
  v21 = v20;
  v43 = a7;
  v44 = v18;
  if (a3->item)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v20 wantsFullscreenFeedExperience];
  }

  v23 = [PXStoryMemoryFeedItemExtendedTraitCollection alloc];
  v24 = [v15 specManager];
  v42 = [(PXStoryMemoryFeedItemExtendedTraitCollection *)v23 initWithSpecManager:v24 initialReferenceSize:v22 isFullscreen:width, height];

  v25 = [v19 copyWithAdditionalOptions:66];
  v26 = [v15 assetCollectionActionPerformerDelegate];
  [v25 setAssetCollectionActionPerformerDelegate:v26];

  v27 = [v15 presentingViewController];
  [v25 setPresentingViewController:v27];

  [v25 setContainerTapToRadarDiagnosticsProvider:v15];
  v28 = [[PXStoryModel alloc] initWithConfiguration:v25 extendedTraitCollection:v42];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __132__PXStoryMemoryFeedItemLayoutFactory_createLayoutForFeedItemAtIndexPath_inDataSource_viewModel_initialReferenceSize_thumbnailAsset___block_invoke;
  v50[3] = &unk_1E7735330;
  v51 = v21;
  v52 = v22;
  v29 = v21;
  [(PXStoryModel *)v28 performChanges:v50];
  v30 = [v15 actionPerformer];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __132__PXStoryMemoryFeedItemLayoutFactory_createLayoutForFeedItemAtIndexPath_inDataSource_viewModel_initialReferenceSize_thumbnailAsset___block_invoke_2;
  v45[3] = &unk_1E7735358;
  v31 = *&a3->item;
  v48 = *&a3->dataSourceIdentifier;
  v49 = v31;
  v46 = v30;
  v47 = v14;
  v32 = v14;
  v33 = v30;
  v34 = [(PXStoryModel *)v28 thumbnailActionPerformer];
  [v34 setPresentPlayerAction:v45];

  v35 = [[PXStoryLayout alloc] initWithModel:v28];
  v36 = [(PXStoryModel *)v28 resourcesDataSourceManager];
  v37 = [v36 dataSource];
  v38 = [v37 keyAssetResource];
  *v43 = [v38 px_storyResourceDisplayAsset];

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